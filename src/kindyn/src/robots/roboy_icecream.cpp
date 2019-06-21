#include "kindyn/robot.hpp"
#include <thread>
#include <roboy_middleware_msgs/MotorCommand.h>
#include <roboy_middleware_msgs/ControlMode.h>
#include <common_utilities/CommonDefinitions.h>
#include <roboy_control_msgs/SetControllerParameters.h>
#include <std_srvs/Empty.h>

using namespace std;

class RoboyIcecream: public vrpuppet::kindyn::Robot{
public:
    /**
     * Constructor
     * @param urdf path to urdf
     * @param cardsflow_xml path to cardsflow xml
     */
    RoboyIcecream(string urdf, string cardsflow_xml){
        if (!ros::isInitialized()) {
            int argc = 0;
            char **argv = NULL;
            ros::init(argc, argv, "roboy_icecream");
        }
        nh = ros::NodeHandlePtr(new ros::NodeHandle);
        motor_command = nh->advertise<roboy_middleware_msgs::MotorCommand>("/roboy/middleware/MotorCommand",1);
        motor_status_sub = nh->subscribe("roboy/middleware/MotorStatus",1,&RoboyIcecream::MotorStatus, this);
        init_pose = nh->advertiseService("init_pose",&RoboyIcecream::initPose,this);
        for(auto part:body_parts) {
            motor_control_mode[part] = nh->serviceClient<roboy_middleware_msgs::ControlMode>(
                    "/roboy/" + part + "/middleware/ControlMode");
            nh->getParam((part+"/joints").c_str(),endeffector_jointnames[part]);
        }
        vector<string> joint_names;
        nh->getParam("joint_names", joint_names);
        init(urdf,cardsflow_xml,joint_names);
        nh->getParam("external_robot_state", external_robot_state);

        update();
    };

    bool initPose(std_srvs::Empty::Request &req,
                  std_srvs::Empty::Response &res){
        initialized = false;
        ROS_INFO("changing control mode to DISPLACEMENT");
        for(auto part:body_parts){
            roboy_middleware_msgs::ControlMode msg;
            msg.request.control_mode = DISPLACEMENT;
            msg.request.set_point = 20;
            msg.request.motor_id = motors[part];
            if(!motor_control_mode[part].call(msg))
                ROS_WARN("failed to change control mode to DISPLACEMENT for %s", part.c_str());
        }
        ros::Duration d(5);
        ROS_INFO("sleeping for 5 seconds");
        d.sleep();
        ROS_INFO("saving position offsets");
        for(auto part:body_parts) {
            for(int i=0;i<sim_motors[part].size();i++) {
                l_offset[part][i] = l[sim_motors[part][i]];
            }
        }
        ROS_INFO("changing control mode to POSITION");
        for(auto part:body_parts){
            for(int i=0;i<sim_motors[part].size();i++) {
                roboy_middleware_msgs::ControlMode msg;
                msg.request.control_mode = POSITION;
                msg.request.set_point = position[part][i];
                msg.request.motor_id.push_back(motors[part][i]);
                if (!motor_control_mode[part].call(msg))
                    ROS_WARN("failed to change control mode to POSITION for %s", part.c_str());
            }
        }
        ROS_INFO("pose init done");
        initialized = true;
        return true;
    }

    void MotorStatus(const roboy_middleware_msgs::MotorStatus::ConstPtr &msg){
        if(msg->id==3){
            int j = 0;
            for(int i=0;i<9;i++) {
                position["shoulder_left"][j] = msg->position[i];
                velocity["shoulder_left"][j] = msg->velocity[i];
                displacement["shoulder_left"][j] = msg->displacement[i];
                j++;
            }
            j = 0;
            for(int i=9;i<15;i++) {
                position["arms"][j] = msg->position[i];
                velocity["arms"][j] = msg->velocity[i];
                displacement["arms"][j] = msg->displacement[i];
                j++;
            }
            j = 0;
            for(int i=15;i<21;i++) {
                position["leg_left"][j] = msg->position[i];
                velocity["leg_left"][j] = msg->velocity[i];
                displacement["leg_left"][j] = msg->displacement[i];
                j++;
            }
        }else if(msg->id == 4){
            int j = 0;
            for(int i=0;i<9;i++) {
                position["shoulder_right"][j] = msg->position[i];
                velocity["shoulder_right"][j] = msg->velocity[i];
                displacement["shoulder_right"][j] = msg->displacement[i];
                j++;
            }
            j = 0;
            for(int i=9;i<15;i++) {
                position["head"][j] = msg->position[i];
                velocity["head"][j] = msg->velocity[i];
                displacement["head"][j] = msg->displacement[i];
                j++;
            }
            j = 0;
            for(int i=15;i<21;i++) {
                position["leg_right"][j] = msg->position[i];
                velocity["leg_right"][j] = msg->velocity[i];
                displacement["leg_right"][j] = msg->displacement[i];
                j++;
            }
        }
    }

    /**
     * Updates the robot model
     */
    void read(){
        update();
    };
    /**
     * Sends motor commands to the real robot
     */
    void write(){
        if(initialized) {
            stringstream str;
            for (auto part:body_parts) {
                str << part << ": ";
                roboy_middleware_msgs::MotorCommand msg;
                msg.id = bodyPartIDs[part];
                msg.motors = motors[part];
                for (int i = 0; i < sim_motors[part].size(); i++) {
                    double l_meter = -l[sim_motors[part][i]];
                    str << l_meter << "\t";
                    switch (motor_type[msg.id][i]) {
                        case MYOBRICK100N: {
                            msg.set_points.push_back(myoBrick100NEncoderTicksPerMeter(l_meter));
                            break;
                        }
                        case MYOBRICK300N: {
                            msg.set_points.push_back(myoBrick300NEncoderTicksPerMeter(l_meter));
                            break;
                        }
                        case MYOMUSCLE500N: {
                            msg.set_points.push_back(myoMuscleEncoderTicksPerMeter(l_meter));
                            break;
                        }
                    }
                }
                str << endl;
                motor_command.publish(msg);
            }
            ROS_INFO_STREAM_THROTTLE(1, str.str());
        }else{
            ROS_INFO_THROTTLE(5,"waiting for initialisation, call /init_pose service!!!");
        }
    };
    ros::NodeHandlePtr nh; /// ROS nodehandle
    ros::Publisher motor_command; /// motor command publisher
    ros::Subscriber motor_status_sub;
    ros::ServiceServer init_pose;
    map<string,ros::ServiceClient> motor_control_mode;
    vector<string> body_parts = {"head","shoulder_left", "shoulder_right", "arms", "leg_left", "leg_right"};
    map<string, vector<string>> endeffector_jointnames;
    bool external_robot_state; /// indicates if we get the robot state externally
    bool initialized = false;
    map<string,vector<uint16_t>> motors = {
            {"head",{9,10,11,12,13,14}},
            {"shoulder_left",{0,1,2,3,4,5,6,7,8}},
            {"shoulder_right",{0,1,2,3,4,5,6,7,8}},
            {"arms",{9,10,11,12}},
            {"leg_left",{15,16,17,18,19,20}},
             {"leg_right",{15,16,17,18,19,20}}
    };
    map<string,vector<uint16_t>> sim_motors = {
            {"head",{36,37,35,34,32,33}},
            {"shoulder_left",{0,1,2,3,4,5,6,7,8}},
            {"shoulder_right",{0,1,2,3,4,5,6,7,8}},
            {"arms",{9,10,11,12}},
            {"leg_left",{15,16,17,18,19,20}},
            {"leg_right",{15,16,17,18,19,20}}
    };
    map<string,vector<double>> l_offset = {
            {"head",{0,0,0,0,0,0}},
            {"shoulder_left",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"shoulder_right",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"arms",{0,0,0,0}},
            {"leg_left",{0,0,0,0,0,0}},
            {"leg_right",{0,0,0,0,0,0}}
    };
    map<string,vector<double>> position = {
            {"head",{0,0,0,0,0,0}},
            {"shoulder_left",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"shoulder_right",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"arms",{0,0,0,0}},
            {"leg_left",{0,0,0,0,0,0}},
            {"leg_right",{0,0,0,0,0,0}}
    };
    map<string,vector<double>> velocity = {
            {"head",{0,0,0,0,0,0}},
            {"shoulder_left",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"shoulder_right",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"arms",{0,0,0,0}},
            {"leg_left",{0,0,0,0,0,0}},
            {"leg_right",{0,0,0,0,0,0}}
    };
    map<string,vector<double>> displacement = {
            {"head",{0,0,0,0,0,0}},
            {"shoulder_left",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"shoulder_right",{0,0,0,0,0,0,0,0,0,0,0,0}},
            {"arms",{0,0,0,0}},
            {"leg_left",{0,0,0,0,0,0}},
            {"leg_right",{0,0,0,0,0,0}}
    };
    map<string,int> bodyPartIDs = {
            {"head", SHOULDER_RIGHT},
            {"shoulder_left", SHOULDER_LEFT},
            {"arms", SHOULDER_LEFT},
            {"shoulder_right", SHOULDER_RIGHT},
            {"leg_left", SHOULDER_RIGHT},
            {"leg_right", SHOULDER_RIGHT}
    };
};

/**
 * controller manager update thread. Here you can define how fast your controllers should run
 * @param cm pointer to the controller manager
 */
void update(controller_manager::ControllerManager *cm) {
    ros::Time prev_time = ros::Time::now();
    ros::Rate rate(300); // changing this value affects the control speed of your running controllers
    while (ros::ok()) {
        const ros::Time time = ros::Time::now();
        const ros::Duration period = time - prev_time;
        cm->update(time, period);
        prev_time = time;
        rate.sleep();
    }
}

int main(int argc, char *argv[]) {
    if (!ros::isInitialized()) {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "cardsflow_example_robot");
    }
    ros::NodeHandle nh;
    string urdf, cardsflow_xml;
    if(nh.hasParam("urdf_file_path") && nh.hasParam("cardsflow_xml")) {
        nh.getParam("urdf_file_path", urdf);
        nh.getParam("cardsflow_xml", cardsflow_xml);
    }else {
        ROS_FATAL("USAGE: rosrun kindyn test_robot path_to_urdf path_to_viapoints_xml");
        return 1;
    }
    ROS_INFO("\nurdf file path: %s\ncardsflow_xml %s", urdf.c_str(), cardsflow_xml.c_str());

    RoboyIcecream robot(urdf, cardsflow_xml);

    controller_manager::ControllerManager cm(&robot);

    // we need an additional update thread, otherwise the controllers won't switch
    thread update_thread(update, &cm);
    update_thread.detach();

    ROS_INFO("STARTING ROBOT MAIN LOOP...");

    while(ros::ok()){
        robot.read();
        robot.write();
        ros::spinOnce();
    }

    ROS_INFO("TERMINATING...");

    update_thread.join();

    return 0;
}
