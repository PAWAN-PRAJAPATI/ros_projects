#!/usr/bin/env python

import rospy
from drive.msg import DriveCommand
import pygame
from pygame.locals import *
from arm import utils
import sys

status = "stop"

def dis():

    d = myfont.render("Direction  :- ", 1, (0,0,0))
    screen.blit(d, (10, 5))

    scoretext = myfont.render(status, 1, (0,0,0))
    screen.blit(scoretext, (160, 5))

    d = myfont.render("Turning Ratio:-", 1, (0,0,0))
    screen.blit(d, (10, 30))

    d = myfont.render("---", 1, (0,0,0))
    screen.blit(d, (160, 30))

    d = myfont.render("PWM to Wheels :-", 1, (0,0,0))
    screen.blit(d, (10, 60))
    
    d = myfont.render("", 1, (0,0,0))
    screen.blit(d, (160, 60))
    
    screen.blit(img, [0, 80])
    
    pygame.display.flip()

def start():
    global status
    while True:
        try:
            for event in pygame.event.get():

                ### KEYDOWN ### 
                if event.type == pygame.KEYDOWN:

                    print(event.key,":event")
                    if event.key == K_w:
                        drive_command.command = "w"
                        pub.publish(drive_command)
                        status = "forward"

                    elif event.key == K_s:
                        drive_command.command = "s"
                        pub.publish(drive_command)
                        status = "backward"

                    elif event.key == K_a:
                        drive_command.command = "a"
                        pub.publish(drive_command)
                        status = "left"

                    elif event.key == K_d:
                        drive_command.command = "d"
                        pub.publish(drive_command)
                        status = "right"

                    ### STOP
                    elif event.key == K_p:
                        drive_command.command = "p"
                        pub.publish(drive_command)
                        status = "stop"
                    ###

                    ### increase decrease
                    elif event.key == 269:
                        drive_command.command = "-"
                        pub.publish(drive_command)
                        status = "stop"
                    elif event.key == 270:
                        drive_command.command = "+"
                        pub.publish(drive_command)
                        status = "stop"
                    ###


                    ###
                    elif(event.key == 27):
                        pygame.display.quit()
                        pygame.quit()
                        sys.exit()


                ### stop on any KEYUP ###
                if event.type == pygame.KEYUP:
                    drive_command.command = "p"
                    pub.publish(drive_command)
                    status = "stop"

        except Exception as e:
            print(e)

        screen.fill(WHITE)
        dis()

### init ros node
rospy.init_node('drive_gcs')
pub = rospy.Publisher('drive/command',DriveCommand,queue_size=2)
###

### init pygame
pygame.init()
size = width, height = 800,500
screen = pygame.display.set_mode(size)
pygame.display.set_caption("URC Rover Controls")
myfont = pygame.font.SysFont("Liberation Serif", 20)
WHITE = (255,255,255)
img=pygame.image.load(utils.getResourcepath("rover_control.png",sys.argv[0])).convert()
###

### init drive command
drive_command = DriveCommand()
###

if __name__ == '__main__':
    start()

