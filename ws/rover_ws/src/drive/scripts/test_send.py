#!/usr/bin/env python

import rospy
from drive.msg import DriveCommand
import pygame
from pygame.locals import *


### init ros node
rospy.init_node('drive')
pub = rospy.Publisher('/drive/command',DriveCommand,queue_size=10)
###

### init pygame
pygame.init()
width, height = 500,500
screen=pygame.display.set_mode((width, height))
###

### init drive command
drive_command = DriveCommand()
###



while True:
     for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == K_w:
                print("sending...")
                drive_command.command = "forward"
                pub.publish(drive_command)

        if event.type == pygame.KEYDOWN:
            if event.key == K_s:
                drive_command.command = "backwards"
                pub.publish(drive_command)
