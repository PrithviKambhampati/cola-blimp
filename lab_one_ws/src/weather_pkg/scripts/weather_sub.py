#!/usr/bin/env python
import rospy
from std_msgs.msg import Int64

def callback(data):
    rospy.loginfo(data.data)
    
def weather_sub():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", Int64, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    weather_sub()
