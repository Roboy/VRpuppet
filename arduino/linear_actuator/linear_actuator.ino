#include <ros.h>
#include <ArduinoHardware.h>
#include <std_srvs/SetBool.h>
#include <std_srvs/Empty.h>
#include <roboy_middleware_msgs/MotorCommand.h>
#include <Adafruit_NeoPixel.h>

ros::NodeHandle nh;

class StepperMotorShield {
public:
    StepperMotorShield(byte id, uint16_t period)
            : id_(id), period_(period),
              motor_command_subscriber_("/stepper_motor_shield/MotorCommand",
                                        &StepperMotorShield::motor_command_callback, this),
              emergency_server_("/stepper_motor_shield/emergency", &StepperMotorShield::emergency_callback, this),
              zero_server_("/stepper_motor_shield/zero", &StepperMotorShield::zero_callback, this),
              e_stop_client_("/m3/emergency_stop")
    {}
    void init(ros::NodeHandle &nh) {
        // set emergency interupt button
        pinMode(e_stop_pin, INPUT_PULLUP);

        for (int i = 0; i < 10; i++) {
            pinMode(step_pin[i], OUTPUT);
            pinMode(dir_pin[i], OUTPUT);
            pinMode(release_pin[i], INPUT_PULLUP);
            pinMode(pull_pin[i], INPUT_PULLUP);
        }

        nh.subscribe(motor_command_subscriber_);
        nh.advertiseService(emergency_server_);
        nh.advertiseService(zero_server_);
        nh.serviceClient(e_stop_client_);
        pixels = new Adafruit_NeoPixel(11, neopixel_pin, NEO_GBR + NEO_KHZ800);
        pixels->begin();
        for (int i = 0; i < 11; i++) {
            pixels->setPixelColor(i, pixels->Color(0, 150, 0));
            pixels->show();   // Send the updated pixel colors to the hardware.
        }
    }

    void run() {

        e_stop = digitalRead(e_stop_pin);
        

        if(e_stop && !e_stop_lastState){
            std_srvs::SetBool::Request msg;
            std_srvs::SetBool::Response res;
            e_stop_lastState = true;
            msg.data = e_stop;
            e_stop_client_.call(msg, res);
        }
        else if(e_stop && e_stop_lastState){

        }
        else if(!e_stop && e_stop_lastState){
                e_stop_lastState = e_stop;
                std_srvs::SetBool::Request msg;
            std_srvs::SetBool::Response res;
                msg.data = e_stop;
                e_stop_client_.call(msg, res);
        }
        else{
            period_ = millis() - last_time_;
            if (period_ > 200) {
                last_time_ = millis();
                blink = !blink;
            }
            if (blink)
                pixels->setPixelColor(0, pixels->Color(status_color[0], status_color[1], status_color[2]));
            else
                pixels->setPixelColor(0, pixels->Color(0, 0, 0));
            for (int i = 0; i < 10; i++) {
                int dif = set_point[i] - current_position[i];
                if (dif < 0) {
                    do_step(false, i, -dif);
                    current_position[i] += dif;
                } else if (dif > 0) {
                    do_step(true, i, dif);
                    current_position[i] += dif;
                } else {
                    pixels->setPixelColor(i + 1, pixels->Color(10, 10, 10));
                    pixels->show();
                }
            }
        }
    }

    void do_step(byte dir, int motor, int steps) {
        digitalWrite(dir_pin[motor], dir);
        if (dir)
            pixels->setPixelColor(motor + 1, pixels->Color(0, 150, 0));
        else
            pixels->setPixelColor(motor + 1, pixels->Color(0, 0, 150));
        pixels->show();
        for (int i = 0; i < steps; i++) {
            digitalWrite(step_pin[motor], HIGH);
            delayMicroseconds(500);
            digitalWrite(step_pin[motor], LOW);
            delayMicroseconds(500);
            if (!dir && !digitalRead(pull_pin[motor])) {
                current_position[motor] = 0;
                return;
            }
            if (dir && !digitalRead(release_pin[motor])) {
                return;
            }
        }
    }

    void init_positions() {
        pixels->setPixelColor(0, pixels->Color(0, 150, 0));
        pixels->show();
        for (int motor = 0; motor < 6; motor++) {
            digitalWrite(dir_pin[motor], false);
            while (digitalRead(pull_pin[motor])) {
                digitalWrite(step_pin[motor], HIGH);
                delayMicroseconds(500);
                digitalWrite(step_pin[motor], LOW);
                delayMicroseconds(500);
            }
            current_position[motor] = 0;
            set_point[motor] = 0;
        }
    }

    void motor_command_callback(const roboy_middleware_msgs::MotorCommand &msg) {
        for (int i = 0; i < 10; i++) {
            set_point[i] = msg.set_points[i];
        }
    }

    void emergency_callback(const std_srvs::SetBool::Request &req,
                            std_srvs::SetBool::Response &res) {
        active_ = req.data;
    }

    void zero_callback(const std_srvs::Empty::Request &req,
                       std_srvs::Empty::Response &res) {
        init_positions();
    }

private:
    const byte id_;
    const byte step_pin[10] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, dir_pin[10] = {24, 25, 26, 27, 28, 29, 30, 31, 32, 33},
            enable_pin[10] = {14, 15, 16, 17, 18, 19, 40, 41, 42, 43}, pull_pin[10] = {A0, A1, A2, A3, A4, A5, A6, A7, A8, A9},
            release_pin[10] = {44, 45, 46, 47, 48, 49, 50, 51, 52, 53}, neopixel_pin = 12, e_stop_pin = 50;
    int set_point[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, current_position[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    uint16_t period_;
    bool active_ = true;
    uint32_t last_time_;
    bool blink;
    bool e_stop = false;
    bool e_stop_lastState = false;
    int status_color[3] = {0, 150, 0};
    ros::Subscriber <roboy_middleware_msgs::MotorCommand, StepperMotorShield> motor_command_subscriber_;
    ros::ServiceServer <std_srvs::SetBool::Request, std_srvs::SetBool::Response, StepperMotorShield> emergency_server_;
    ros::ServiceServer <std_srvs::Empty::Request, std_srvs::Empty::Response, StepperMotorShield> zero_server_;
    ros::ServiceClient <std_srvs::SetBool::Request, std_srvs::SetBool::Response> e_stop_client_;
    Adafruit_NeoPixel *pixels;
};

StepperMotorShield stepper_motor_shield(69, 50);

void setup() {
    nh.initNode();
    stepper_motor_shield.init(nh);
}

void loop() {
    stepper_motor_shield.run();
    nh.spinOnce();
    delay(1);
}
