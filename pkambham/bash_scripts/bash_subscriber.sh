#! /bin/bash/

cd catkin_ws
catkin_make
. ./devel/setup.bash
rosrun weather_pkg weather_sub.py 
