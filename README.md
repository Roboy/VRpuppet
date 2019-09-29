# VRpuppet
An actor struggles to die onstage, but a puppet has to struggle to live

## Installation
Clone the repo into your catkin workspace and build it   

    $ cd path_to_catkin_ws/src
    $ git clone --recurse-submodules https://github.com/Roboy/VRpuppet 
    $ cd ..
    $ catkin_make  
    
Source your workspace  

    $ . devel/setup.bash

## Before you start
Make sure the Host IP as well as the Wifi network and password in VRPuppet/hardware/m3/esp/m3_conrol/src/main.c are set to the correct network (e.g. roboy).   

Then flash VRPuppet/hardware/m3/esp/m3_conrol/src/main.c on to all M3 boards. See M3 Readme.md for how to flash.

## Running the VRCage GUI
In a terminal window start a ROScore  

    $ roscore

In a second terminal window navigate to your catkin workspace, source it as seen above and then start up the VRPuppet Gui by runnung
    
    $ rosrun rqt_gui rqt_gui

and then from the dropdown menu *Plugins->Roboy* choose *vr puppets demo*.  

![alt text](https://github.com/NexusReflex/VRpuppet/blob/master/docs/imgs/gui.png "gui")  

When operating together with OUI team you might also need to set up a **rosbridge server**, if OUI doesn't have a Linux partition on hand.  

To send commands to the linear actuators  press the GUI's serial node button.  

(**Attention**: the Arduino Mega as well as the motorcontrol shield suffered greatly during the hackathon and should be replaced before resuming operation!)




