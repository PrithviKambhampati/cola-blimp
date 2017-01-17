#! /bin/bash/

cd catkin_ws
catkin_make
. ./devel/setup.bash
cd ~
rosrun weather_pkg weather_pub.py 
