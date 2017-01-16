#!/usr/bin/env python
import sys
import rospy
import pyowm
from random import randint
from std_msgs.msg import Int64
from weather_pkg.msg import weather

hot = ["Boy that is hot!","Better wear a tee-shirt.","I'm melting."]
warm = ["Looks like a nice day", "Good day for a walk.", "Great weather to be outside."]
cool = ["Better wear a sweeter.", "Getting colder...", "Don't catch a cold..."]
cold = ["Better wear a jacket!", "Good Day to stay indoors..", "Don't freeze!"]

def callback(data):

    x = randint(0,2)

    if data.temp < 32:
        rospy.loginfo("It is " + str(data.temp) + " degrees outside! " + cold[x])
    elif data.temp < 50:
        rospy.loginfo("It is " + str(data.temp) + " degrees outside! " + cool[x])
    elif data.temp < 80:
        rospy.loginfo("It is " + str(data.temp) + " degrees outside! " + warm[x])
    else:
        rospy.loginfo("It is " + str(data.temp) + " degrees outside! " + hot[x])

    rospy.loginfo("Temperature is: " + str(data.temp))
    rospy.loginfo("Cloud Cover is: " + data.cloud_cover)
    rospy.loginfo("Pressure is: " + str(data.pressure))
    rospy.loginfo("Zipcode is: " + str(data.zipcode))

def weather_sub():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", weather, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    weather_sub()

