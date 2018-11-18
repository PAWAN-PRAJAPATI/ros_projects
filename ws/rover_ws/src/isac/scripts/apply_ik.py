#!/usr/bin/env python

import message_filters
import rospy
#from isac.srv import *
from isac.msg import ArmAngles, ArmPosition
from isac.srv import IKsrv
from std_msgs.msg import Float64MultiArray

def callback(position,arm_angles):
    print("position:",position)
    print("arm_angles:",arm_angles)
    print("ik sloved:",slove_ik(arm_angles,position))

def slove_ik(arm_angles,position):
    rospy.wait_for_service('ik_srv')
    try:
        get_final_angles = rospy.ServiceProxy('ik_srv', IKsrv)
        resp1 = get_final_angles(arm_angles,position)

        pub = rospy.Publisher('/arm_control/command',Float64MultiArray,queue_size=10)

        final = Float64MultiArray()
        final.data = [resp1.arm_angle_final.base, resp1.arm_angle_final.shoulder, resp1.arm_angle_final.elbow, resp1.arm_angle_final.gripper]
        #final.layout = resp1.header
        pub.publish(final)
        return resp1

    except rospy.ServiceException, e:
        print ("Service call failed: %s"%e)

if __name__ == "__main__":

    rospy.init_node('apply_ik')
    sub_position = message_filters.Subscriber('final_position_arm',ArmPosition)
    sub_arm_angles = message_filters.Subscriber('arm_angles',ArmAngles)

    ts = message_filters.TimeSynchronizer([sub_position,sub_arm_angles],10)
    ts.registerCallback(callback)
    rospy.spin()