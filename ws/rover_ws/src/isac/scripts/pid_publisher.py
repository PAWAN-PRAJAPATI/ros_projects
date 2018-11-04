#!/usr/bin/env python


#the code publishes the arm_angles from the joint_state topic wrapping in a ArmAngle 
#message. it acts a angle rovided for the inverse kinematics equation. In real rover
#this code is going to  read the pid values from optical encoder
#this code will be running on rover and get the optical encoder value of robotic arm
#but for testing purpose i am taking values from joint_state to mimic the rover footprint


import rospy
from isac.msg import ArmAngles
from sensor_msgs.msg import JointState

def callback(data):
    data_dic = { }
    for i in range(len(data.name)):
        data_dic[data.name[i]]=data.position[i]
    rospy.loginfo(data_dic)
    arm_angles = ArmAngles()
    arm_angles.base = data_dic["base_rotation"]
    arm_angles.shoulder = data_dic["shoulder_joint"]
    arm_angles.elbow = data_dic["elbow_joint"]
    arm_angles.gripper = data_dic["gripper_joint"]
    

    #rospy.init_node('pid_publisher')
    pub = rospy.Publisher('/arm_angles',ArmAngles,queue_size=10)
    pub.publish(arm_angles)



def listener():

    rospy.init_node('pid_publish', anonymous=True)
    rospy.Subscriber("/joint_states",JointState, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()