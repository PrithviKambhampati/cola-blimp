#! /bin/bash

cd ~/catkin_ws/
catkin_make
. ./devel/setup.bash
cd ~
roscore
