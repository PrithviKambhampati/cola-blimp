#!/usr/bin/env python
import sys
import rospy
import pyowm
from random import randint
from std_msgs.msg import Int64
from weather_pkg.msg import weather

def callback(data):
    rospy.loginfo(str(data.temp))

def weather_sub():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", weather, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    weather_sub()

