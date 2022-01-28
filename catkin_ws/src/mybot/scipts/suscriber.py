#!/usr/bin/env python
import rospy
from std_msgs.msg import String
#from pibot.msg import CamPose, CamPoseArray
from nav_msgs.msg import Odometry
import tf
from geometry_msgs.msg import Point, Quaternion, PoseWithCovarianceStamped
from tf.transformations import *
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import numpy as np
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Imu
from geometry_msgs.msg import Vector3
import time



def callback(data):
    # rospy.loginfo(rospy.get_caller_id() + "I heard %s", msg)
    pos = data.pose.pose.position
    ori = data.pose.pose.orientation
    orientation = [ori.x, ori.y, ori.z, ori.w]
    position    = [pos.x, pos.y, pos.z]
    print(pos)
    print("-----")
    print(ori)  
    print("////////////")  

if __name__ == '__main__':
    rospy.init_node('suscriber_imu' , anonymous=True)
    # rospy.Subscriber('/pelican/imu', Imu, callback)
    rospy.Subscriber('/pelican/ground_truth/odometry', Odometry, callback)

    rospy.spin()