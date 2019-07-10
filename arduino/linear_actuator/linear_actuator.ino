#include <ros.h>
#include <std_srvs/SetBool.h>
#include <roboy_middleware_msgs/MotorCommand.h>

ros::NodeHandle nh;

class StepperMotorShield
{
public:
  StepperMotorShield(byte id, uint16_t period)
  : id_(id),period_(period),
    motor_command_subscriber_("/stepper_motor_shield/MotorCommand", &StepperMotorShield::motor_command_callback, this),
    emergency_server_("/stepper_motor_shield/emergency", &StepperMotorShield::emergency_callback, this)
  {}

  void init(ros::NodeHandle& nh)
  {
    for(int i=0;i<10;i++){
      pinMode(step_pin[i], OUTPUT);
      pinMode(dir_pin[i], OUTPUT);
    }
    nh.subscribe(motor_command_subscriber_);
    nh.advertiseService(emergency_server_);
  }

  void run()
  {
//    if(active_ && ((millis() - last_time_) >= period_))
//    {
//      last_time_ = millis();
      for(int i=0;i<10;i++){
        int dif = set_point[i] - current_position[i];
        if(dif<0){
          do_step(false, i, -dif); 
          current_position[i]+=dif;
        }else{
          do_step(true, i, dif); 
          current_position[i]+=dif;
        }
      }
//    }
  }

  void do_step(byte dir, int motor, int steps){
      digitalWrite(dir_pin[motor],dir);
      for(int i=0;i<steps;i++){ 
        digitalWrite(step_pin[motor],HIGH); 
        delayMicroseconds(500); 
        digitalWrite(step_pin[motor],LOW); 
        delayMicroseconds(500); 
      }
  }

  void motor_command_callback(const roboy_middleware_msgs::MotorCommand& msg)
  {
    for(int i=0;i<10;i++){
      set_point[i] = msg.set_points[i];
    }
  }

  void emergency_callback(const std_srvs::SetBool::Request& req,
                              std_srvs::SetBool::Response& res)
  {
    active_ = req.data;
  }

private:
  const byte id_;
  const byte step_pin[10] = {2,3,4,5,6,7,8,9,10,11}, dir_pin[10] = {24,25,26,27,28,29,30,31,32,33};
  int set_point[10] = {0,0,0,0,0,0,0,0,0,0}, current_position[10] = {0,0,0,0,0,0,0,0,0,0};
  uint16_t period_;
  bool active_ = true;
  uint32_t last_time_;
  ros::Subscriber<roboy_middleware_msgs::MotorCommand, StepperMotorShield> motor_command_subscriber_;
  ros::ServiceServer<std_srvs::SetBool::Request, std_srvs::SetBool::Response, StepperMotorShield> emergency_server_;
};

StepperMotorShield stepper_motor_shield(69,50);

void setup()
{
  nh.initNode();
  stepper_motor_shield.init(nh);
  
  for(int i=0;i<6;i++){
    stepper_motor_shield.do_step(true,i,100);
  }
  for(int i=0;i<6;i++){
    stepper_motor_shield.do_step(false,i,100);
  }
}

void loop()
{
  stepper_motor_shield.run();
  nh.spinOnce();
  delay(1);
}
