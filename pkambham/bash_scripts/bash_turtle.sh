#! /bin/bash/

cd catkin_ws
catkin_make
. ./devel/setup.bash
temp=$(tail ~/catkin_ws/temp.txt -c 14)
cd ~
rosrun turtlesim turtlesim_node

