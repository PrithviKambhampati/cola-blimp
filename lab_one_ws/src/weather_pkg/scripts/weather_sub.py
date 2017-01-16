#!/usr/bin/env python
import rospy
from std_msgs.msg import Int64
from random import randint

hot = ["Boy that is hot!","Better wear a tee-shirt.","I'm melting."]
warm = ["Looks like a nice day", "Good day for a walk.", "Great weather to be outside."]
cool = ["Better wear a sweeter.", "Getting colder...", "Don't catch a cold..."]
cold = ["Better wear a jacket!", "Good Day to stay indoors..", "Don't freeze!"]

def callback(data):

    x = randint(0,2)

    if data.data < 32:
        rospy.loginfo("It is " + str(data.data) + " degrees outside! " + cold[x])
    elif data.data < 50:
        rospy.loginfo("It is " + str(data.data) + " degrees outside! " + cool[x])
    elif data.data < 80:
        rospy.loginfo("It is " + str(data.data) + " degrees outside! " + warm[x])
    else:
        rospy.loginfo("It is " + str(data.data) + " degrees outside! " + hot[x])

    
def weather_sub():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", Int64, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    weather_sub()

