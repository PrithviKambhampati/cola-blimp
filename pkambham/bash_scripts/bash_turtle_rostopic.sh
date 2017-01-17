#! /bin/bash/

cd catkin_ws
catkin_make
. ./devel/setup.bash
temp=$(tail ~/catkin_ws/temp.txt -c 14)
cd ~
ang_vel=$(echo "scale=3;100/${temp}" | bc)
temp_int=${temp%.*}
if [ "$temp_int" -lt "32" ]
then 
  rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 4.0]'
elif [ "$temp_int" -lt "50" ]
then 
  rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 3.0]'
elif [ "$temp_int" -lt "80" ]
then 
  rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 2.0]'
else
  rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.0]'
fi
