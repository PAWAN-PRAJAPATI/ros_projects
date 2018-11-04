#!/usr/bin/env python

import sys
import rospy
from isac.srv import *
from isac.msg import ArmAngles
from geometry_msgs.msg import Point



global_arm_angle = ArmAngles()
global_point  = Point()

def add_two_ints_client(arm_angle,point):
    rospy.wait_for_service('ik_srv')
    try:
        get_final_angles = rospy.ServiceProxy('ik_srv', IK)
        resp1 = get_final_angles(arm_angle,point)
        return resp1
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e
 

def sub_arm_angle():
    #rospy.init_node('client_ik', anonymous=True)
    rospy.Subscriber("/arm_angles",ArmAngles, callback_arm_angle)
    #rospy.spin()

def sub_arm_final_point():
    print("client")
    rospy.init_node('client_ik')
    rospy.Subscriber("/final_point",Point, callback_arm_final_point)
    #rospy.spin()



def callback_arm_angle(arm_angle):
    global global_point
    global_arm_angle = arm_angle
    print (add_two_ints_client(arm_angle,global_point))
    #print(global_arm_angle)


def callback_arm_final_point(point):
    global global_point
    global_point = point
    print("Point:",point)
    sub_arm_angle()




if __name__ == "__main__":
    '''
    arm_angle = ArmAngles()
    arm_angle.shoulder = 0.2
    arm_angle.elbow = 0.3
    '''
    
    sub_arm_final_point()
    rospy.spin()

