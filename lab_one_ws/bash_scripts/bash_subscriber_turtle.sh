#! /bin/bash/

cd catkin_ws
catkin_make
. ./devel/setup.bash
timeout 15 rosrun weather_pkg weather_sub_turtle.py > temp.txt
temp=$(tail ~/catkin_ws/temp.txt -c 14)
cd ~

