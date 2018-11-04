#!/usr/bin/env python

import rospy
from isac.msg import ArmAngles


rospy.init_node('pid_publisher')

pub = rospy.Publisher('/arm_angles',ArmAngles,queue_size=10)
rate = rospy.Rate(10)
angles = ArmAngles()
angles.shoulder = 10
angles.elbow = 30
angles.wrist =20.412
angles.gripper = 12.42
angles.base = 12.4
angles.wrist_rot = 12.0

while not rospy.is_shutdown():
    pub.publish(angles)
    rate.sleep()