from __future__ import division
import socket
import serial
import sys
import time
import RPi.GPIO as GPIO
import Adafruit_PCA9685
import pygame

pygame.init()
GPIO.setmode(GPIO.BCM)

elb_dir=21
sho_dir=12
gripper_dir=14
wrist_dir=24
#base_dir=7


sho_chl=7
elb_chl=11
gripper_chl=12
wrist_chl=8
#base_chl=0

GPIO.setup(elb_dir,GPIO.OUT)
GPIO.setup(sho_dir,GPIO.OUT)
GPIO.setup(clw_dir,GPIO.OUT)
GPIO.setup(wrist_dir,GPIO.OUT)


pwm = Adafruit_PCA9685.PCA9685()
pwm.set_pwm_freq(60)


TCP_PORT = int(sys.argv[1])
TCP_IP = '127.0.0.1'
BUFFER_SIZE = 1024

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((TCP_IP, TCP_PORT))

def shoulder_up():
    pwm.set_pwm(sho_chl, 0, 850)
    GPIO.output(sho_dir,GPIO.HIGH)
def shoulder_down():
    pwm.set_pwm(sho_chl, 0, 850)
    GPIO.output(sho_dir,GPIO.LOW)
def shoulder_stop():
    pwm.set_pwm(sho_chl, 0, 0)

def elbow_up():
    pwm.set_pwm(elb_chl, 0, 1400)
    GPIO.output(elb_dir,GPIO.HIGH)
def elbow_down():
    pwm.set_pwm(elb_chl, 0, 850)
    GPIO.output(elb_dir,GPIO.LOW)
def elbow_stop():
    pwm.set_pwm(elb_chl, 0, 0)

def gripper_close():
    pwm.set_pwm(gripper_chl, 0, 2200)
    GPIO.output(gripper_dir,GPIO.HIGH)
def gripper_open():
    pwm.set_pwm(gripper_chl, 0, 2200)
    GPIO.output(gripper_dir,GPIO.LOW)
def grippen_stop():
    pwm.set_pwm(gripper_chl, 0, 0)

def wrist_clk():
    pwm.set_pwm(wrist_chl, 0, 2200)
    GPIO.output(wrist_dir,GPIO.HIGH)
def wrist_antclk():
    pwm.set_pwm(wrist_chl, 0, 2200)
    GPIO.output(wrist_dir,GPIO.LOW)
def wrist_stop():
    pwm.set_pwm(wrist_chl, 0, 0)


'''
def base_clk():
    pwm.set_pwm(base_chl, 0, 750)
    GPIO.output(base_dir,GPIO.HIGH)
def base_anti():
    pwm.set_pwm(base_chl, 0, 750)
    GPIO.output(base_dir,GPIO.LOW)
def base_stop():
    pwm.set_pwm(base_chl, 0, 0)
'''

start_ticks=pygame.time.get_ticks() #starter tick
while True:
    
    seconds=(pygame.time.get_ticks()-start_ticks)/1000 #calculate how many seconds
    print(seconds)
    try:
        data = s.recv(BUFFER_SIZE).encode()
        start_ticks=pygame.time.get_ticks() #starter tick


        print(data)
        if(data=='q'):
            base_clk()
        elif(data=='a'):
            base_anti()
        elif(data=='1'):
            base_stop()


        if(data=='w'):
            shoulder_up()
        elif(data=='s'):
            shoulder_down()
        elif(data=='2'):
            shoulder_stop()


        if(data=='e'):
            elbow_up()
        elif(data=='d'):
            elbow_down()
        elif(data=='3'):
            elbow_stop()

        if(data=='r'):
            wrist_clk()
        elif(data=='f'):
            wrist_antclk();
        elif(data=='4'):
            wrist_stop()

        if(data=='t'):
            gripper_open()
        elif(data=='g'):
            gripper_close();
        elif(data=='5'):
            gripper_stop()


    except Exception as e:
	    s.close()
	    print(e)
    	    break

