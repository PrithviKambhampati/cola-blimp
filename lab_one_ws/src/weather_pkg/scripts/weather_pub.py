#!/usr/bin/env python
import sys
import rospy
import pyowm
from std_msgs.msg import Int64
from weather_pkg.msg import weather

def weather_pub(x):
    pub = rospy.Publisher('chatter', weather, queue_size=10)
    rospy.init_node('weather_pub', anonymous=True)
    rate = rospy.Rate(0.1) # 10hz
    owm = pyowm.OWM('211a0e00ae519d723c94311c4ec86126')
   
    while not rospy.is_shutdown():
	city = owm.weather_at_zip_code(x,"us")
	w=city.get_weather()
	temp=w.get_temperature('fahrenheit')
	pressure=w.get_pressure()
	msg=weather()
	msg.zipcode=x
	msg.temp=temp['temp']
	msg.cloud_cover=w.get_clouds()
	msg.pressure=pressure['press']
	msg.dew_point=w.get_dewpoint()
	rospy.loginfo(msg)
        pub.publish(msg)
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

