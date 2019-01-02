#!/usr/bin/env python

import rospy
from drive.msg import DriveCommand
import pygame
from pygame.locals import *




def start():

    while True:
        for event in pygame.event.get():

            ### KEYDOWN ### 
            if event.type == pygame.KEYDOWN:

                print(event.key,":event")
                if event.key == K_w:
                    drive_command.command = "w"
                    pub.publish(drive_command)

                elif event.key == K_s:
                    drive_command.command = "s"
                    pub.publish(drive_command)

                elif event.key == K_a:
                    drive_command.command = "a"
                    pub.publish(drive_command)

                elif event.key == K_d:
                    drive_command.command = "d"
                    pub.publish(drive_command)

                ### STOP
                elif event.key == K_p:
                    drive_command.command = "p"
                    pub.publish(drive_command)
                ###

                ### increase decrease
                elif event.key == 269:
                    drive_command.command = "-"
                    pub.publish(drive_command)
                elif event.key == 270:
                    drive_command.command = "+"
                    pub.publish(drive_command)
                ###

            ### stop on any KEYUP ###
            if event.type == pygame.KEYUP:
                drive_command.command = "p"
                pub.publish(drive_command)




### init ros node
rospy.init_node('drive_gcs')
pub = rospy.Publisher('drive/command',DriveCommand,queue_size=2)
###

### init pygame
pygame.init()
width, height = 500,500
screen=pygame.display.set_mode((width, height))
###

### init drive command
drive_command = DriveCommand()
###

if __name__ == '__main__':
    start()

