#!/usr/bin/env python
import message_filters
import pygame
from pygame.locals import *
import rospy
import ikpy
import numpy as np
from ikpy import plot_utils
from isac.msg import ArmAngles, ArmPosition
import math

my_chain = ikpy.chain.Chain.from_urdf_file("/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/urdf/robot_2link.urdf")


step = 0.05


#returns the xyz from arm_angles
def slove_fk(arm_angles):
    global xyz,arm_angles_rover
    print(arm_angles)
    real_frame = my_chain.forward_kinematics([0,arm_angles.base,arm_angles.shoulder,arm_angles.elbow,arm_angles.gripper,0])
    xyz = get_position_from_frame(real_frame)
    amr_angles_rover = arm_angles
    #rospy.spinOnce()
    sub.unregister()


#return the position from the ik frame     
def get_position_from_frame(frame):
    arm_position = ArmPosition()
    arm_position.x = frame[0][3]
    arm_position.y = frame[1][3]
    arm_position.z = frame[2][3]

    return arm_position

def increase_x():
    global sub,xyz
    #get the current arm_angles and apply fk to find current arm_position
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    #then increase the required axis
    xyz.x=xyz.x+step
    #publish new position
    pub.publish(xyz)
    print(xyz)

def decrease_x():
    global sub,xyz
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    xyz.x=xyz.x - step
    pub.publish(xyz)
    print(xyz)

def increase_y():
    global sub,xyz
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    xyz.y=xyz.y + step
    pub.publish(xyz)
    print(xyz)

def decrease_y():
    global sub,xyz
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    xyz.y=xyz.y - step
    pub.publish(xyz)
    print(xyz)

def increase_z():
    global sub,xyz
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    xyz.z=xyz.z + step
    pub.publish(xyz)
    print(xyz)

def decrease_z():
    global sub,xyz
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    xyz.z=xyz.z - step
    pub.publish(xyz)
    print(xyz)

def increase_x_wrt_camera():
    global sub,xyz, arm_angles
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    theta = 1.5714 -  arm_angles_rover.base
    xyz.x = xyz.x + step*math.cos(theta)
    xyz.y = xyz.y + step*math.sin(theta)
    pub.publish(xyz)
    print(xyz)

def decrease_x_wrt_camera():
    global sub,xyz, arm_angles
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    theta = 1.5714 -  arm_angles_rover.base
    xyz.x = xyz.x - step*math.cos(theta)
    xyz.y = xyz.y - step*math.sin(theta)
    pub.publish(xyz)
    print(xyz)



def increase_y_wrt_camera():
    global sub,xyz, arm_angles
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    theta = 1.57 -  arm_angles_rover.base
    xyz.x = xyz.x - step*math.sin(theta)
    xyz.y = xyz.y + step*math.cos(theta)
    pub.publish(xyz)
    print(xyz)

def decrease_y_wrt_camera():
    global sub,xyz, arm_angles
    sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)
    theta = 1.57 -  arm_angles_rover.base
    xyz.x = xyz.x + step*math.sin(theta)
    xyz.y = xyz.y - step*math.cos(theta)
    pub.publish(xyz)
    print(xyz)

pygame.init()
width, height = 300, 300
screen=pygame.display.set_mode((width, height))

rospy.init_node('pygame_arm_controls')
pub = rospy.Publisher('/final_position_arm',ArmPosition,queue_size=10)


#sub_arm_angles = message_filters.Subscriber('/arm_angles',ArmAngles)
#ts = message_filters.TimeSynchronizer([sub_arm_angles],10)
#ts.registerCallback(slove_fk)

global sub
global xyz
global arm_angles_rover

arm_angles_rover = ArmAngles()
xyz = ArmPosition()
sub = rospy.Subscriber('/arm_angles',ArmAngles,slove_fk)

while True:
    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == K_d:
                increase_y_wrt_camera()
                #increase_x()
            elif event.key == K_a:
                #decrease_x()
                decrease_y_wrt_camera()
            elif event.key == K_w:
                #increase_y()
                increase_x_wrt_camera()
            elif event.key == K_s:
                #decrease_y()
                decrease_x_wrt_camera()
            elif event.key == K_q:
                increase_z()
            elif event.key == K_z:
                decrease_z()
                #sub=rospy.Subscriber('/arm_angles',ArmAngles,get_forward_wrt_camera)
            
            '''
            elif event.key == K_d:
                sub=rospy.Subscriber('/arm_angles',ArmAngles,get_left_wrt_camera)
        
            elif event.key == K_a:
                sub=rospy.Subscriber('/arm_angles',ArmAngles,get_right_wrt_camera)

            elif event.key == K_s:
                sub=rospy.Subscriber('/arm_angles',ArmAngles,get_back_wrt_camera)
            elif event.key == K_q:
                z +=0.1
                print(x,y,z)
            elif event.key == K_z:
                z -=0.1
                print(x,y,z)
            '''
