#!/usr/bin/env python
import sys
import rospy
import pyowm
from std_msgs.msg import Int64

def weather_pub(x):
    pub = rospy.Publisher('chatter', Int64, queue_size=10)
    rospy.init_node('weather_pub', anonymous=True)
    rate = rospy.Rate(0.1) # 10hz
    owm = pyowm.OWM('211a0e00ae519d723c94311c4ec86126')
   
    while not rospy.is_shutdown():
	city = owm.weather_at_zip_code(x,"us")
	w=city.get_weather()
	temp=w.get_temperature('fahrenheit')
	temp =temp['temp']
	rospy.loginfo(temp)
        pub.publish(temp)
        rate.sleep()

if __name__ == '__main__':

    if len(sys.argv) > 1:
        x = sys.argv[1]

    else:
        x = "49931"  #default to Houghton if no zip code given

    try:
        weather_pub(x)

    except rospy.ROSInterruptException:
        pass

