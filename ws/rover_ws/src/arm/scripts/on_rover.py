#!/usr/bin/env python

import rospy
from arm.msg import ArmControls
import serial
import sys
from arm import arm_pins
import RPi.GPIO as GPIO
import Adafruit_PCA9685





def base_clk(arm_controls):
    pwm.set_pwm(arm_pins.base_chl, 0, arm_controls.base_pwm)
    GPIO.output(arm_pins.base_dir,GPIO.HIGH)
def base_anti(arm_controls):
    pwm.set_pwm(arm_pins.base_chl, 0, arm_controls.base_pwm)
    GPIO.output(arm_pins.base_dir,GPIO.LOW)
def base_stop(arm_controls):
    pwm.set_pwm(arm_pins.base_chl, 0, 0)


def shoulder_up(arm_controls):
    pwm.set_pwm(arm_pins.shoulder_chl, 0, arm_controls.shoulder_pwm)
    GPIO.output(arm_pins.shoulder_dir,GPIO.HIGH)
def shoulder_down(arm_controls):
    pwm.set_pwm(arm_pins.shoulder_chl, 0, arm_controls.shoulder_pwm)
    GPIO.output(arm_pins.shoulder_dir,GPIO.LOW)
def shoulder_stop(arm_controls):
    pwm.set_pwm(arm_pins.shoulder_chl, 0, 0)

def elbow_up(arm_controls):
    pwm.set_pwm(arm_pins.elbow_chl, 0, arm_controls.elbow_pwm)
    GPIO.output(arm_pins.elbow_dir,GPIO.HIGH)
def eblow_down(arm_controls):
    pwm.set_pwm(arm_pins.elbow_chl, 0, arm_controls.elbow_pwm)
    GPIO.output(arm_pins.elbow_dir,GPIO.LOW)
def elbow_stop(arm_controls):
    pwm.set_pwm(arm_pins.elbow_chl, 0, 0)


def gripper_close(arm_controls):
    pwm.set_pwm(arm_pins.gripper_chl, 0, arm_controls.gripper_pwm)
    GPIO.output(arm_pins.gripper_dir,GPIO.HIGH)
def gripper_open(arm_controls):
    pwm.set_pwm(arm_pins.gripper_chl, 0,  arm_controls.gripper_pwm)
    GPIO.output(arm_pins.gripper_dir,GPIO.LOW)
def gripper_stop(arm_controls):
    pwm.set_pwm(arm_pins.gripper_chl, 0, 0)

def wrist_clk(arm_controls):
    pwm.set_pwm(arm_pins.wrist_rot_chl, 0, arm_controls.wrist_rot_pwm)
    GPIO.output(arm_pins.wrist_rot_dir,GPIO.HIGH)
def wrist_antclk(arm_controls):
    pwm.set_pwm(arm_pins.wrist_rot_chl, 0, arm_controls.wrist_rot_pwm)
    GPIO.output(arm_pins.wrist_rot_dir,GPIO.LOW)
def wrist_rot_stop(arm_controls):
    pwm.set_pwm(arm_pins.wrist_rot_chl, 0, 0)


def wrist_up(arm_controls):
    pwm.set_pwm(arm_pins.wrist_chl, 0, arm_controls.wrist_pwm)
    GPIO.output(arm_pins.wrist_dir,GPIO.HIGH)
def wrist_down(arm_controls):
    pwm.set_pwm(arm_pins.wrist_chl, 0, arm_controls.wrist_pwm)
    GPIO.output(arm_pins.wrist_dir,GPIO.LOW)
def wrist_stop(arm_controls):
    pwm.set_pwm(arm_pins.wrist_chl, 0, 0)

def stop(arm_controls):
    base_stop(arm_controls)
    shoulder_stop(arm_controls)
    elbow_stop(arm_controls)
    wrist_rot_stop(arm_controls)
    wrist_stop(arm_controls)
    gripper_stop(arm_controls)


def setup_pi():
    GPIO.setup(elb_dir,GPIO.OUT)
    GPIO.setup(sho_dir,GPIO.OUT)
    GPIO.setup(clw_dir,GPIO.OUT)
    GPIO.setup(wrist_dir,GPIO.OUT)






def pi(arm_controls):
    command = arm_controls.command
    print(arm_controls)

    if(command=='q'):
        base_clk(arm_controls)
    elif(command=='a'):
        base_anti(arm_controls)  
    elif(command=='1'):
        base_stop(arm_controls)  

    elif(command=='w'):
        shoulder_up(arm_controls)  
    elif(command=='s'):
        shoulder_down(arm_controls)  
    elif(command=='2'):
        shoulder_stop(arm_controls)  

    elif(command=='e'):
        elbow_up(arm_controls)  
    elif(command=='d'):
        eblow_down(arm_controls)  
    elif(command=='3'):
        elbow_stop(arm_controls)  


    elif(command=='r'):
        wrist_up(arm_controls)  
    elif(command=='f'):
        wrist_down(arm_controls)  
    elif(command=='4'):
        wrist_stop(arm_controls)  


    elif(command=='t'):
        wrist_clk(arm_controls)  
    elif(command=='g'):
        wrist_antclk(arm_controls)  
    elif(command=='5'):
        wrist_rot_stop(arm_controls)  


    elif(command=='y'):
        gripper_open(arm_controls)  
    elif(command=='h'):
        gripper_close(arm_controls)  
    elif(command=='6'):
        gripper_stop(arm_controls)  


    elif(command== 'k'):
        stop()









def start():

    rospy.init_node('arm_rover')
    rospy.Subscriber("arm/command", ArmControls, pi)
    rospy.spin()



pwm = Adafruit_PCA9685.PCA9685()
pwm.set_pwm_freq(60) 
     
if __name__ == '__main__':
    start()