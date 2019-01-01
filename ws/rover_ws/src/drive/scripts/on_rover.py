#!/usr/bin/env python

import rospy
from drive.msg import DriveCommand
import serial
import sys

print(sys.argv)
ardiuno_port = '/dev/ttyACM'
#ser = serial.Serial('/dev/ttyACM0',9600)  #Serial

def ardiuno(data):
    command = data.command
    print(command)
    #ser.write(command)  

def start():

    rospy.init_node('drive_rover')
    rospy.Subscriber("drive/command", DriveCommand, ardiuno)
    rospy.spin()

if __name__ == '__main__':
    start()