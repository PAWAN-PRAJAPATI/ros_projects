#!/usr/bin/env python

import rospy
from arm.msg import ArmControls
import pygame
import sys
from arm import utils
from pygame.locals import *



def dis():
    d = myfont.render("Motors   :- ", 1, (0,0,0))
    screen.blit(d, (5, 5))

    d = myfont.render("PWM     :- ", 1, (0,0,0))
    screen.blit(d, (5, 30))

    d = myfont.render("Base  ", 1, (0,0,0))
    screen.blit(d, (110, 5))

    d = myfont.render(str(arm_controls.base_pwm), 1, (0,0,0))
    screen.blit(d, (110, 30))

    d = myfont.render("Shoulder  ", 1, (0,0,0))
    screen.blit(d, (180, 5))

    d = myfont.render(str(arm_controls.shoulder_pwm), 1, (0,0,0))
    screen.blit(d, (180, 30))
    
    d = myfont.render("Elbo  ", 1, (0,0,0))
    screen.blit(d, (280, 5))

    d = myfont.render(str(arm_controls.elbow_pwm), 1, (0,0,0))
    screen.blit(d, (280, 30))
    
    d = myfont.render("Wrist(U/D)  ", 1, (0,0,0))
    screen.blit(d, (350, 5))

    d = myfont.render(str(arm_controls.wrist_pwm), 1, (0,0,0))
    screen.blit(d, (350, 30))
    
    d = myfont.render("Wrist(Rotate)  ", 1, (0,0,0))
    screen.blit(d, (470, 5))

    d = myfont.render(str(arm_controls.wrist_rot_pwm), 1, (0,0,0))
    screen.blit(d, (470, 30))


    d = myfont.render("Gripper  ", 1, (0,0,0))
    screen.blit(d, (600, 5))

    d = myfont.render(str(arm_controls.gripper_pwm), 1, (0,0,0))
    screen.blit(d, (600, 30))


    d = myfont.render("Esc to exit", 1, (0,0,0))
    screen.blit(d, (700, 5))
    
    screen.blit(img, [0, 80])
    
    pygame.display.flip()



def start():

    while True:
        try:
            for event in pygame.event.get():

                ### KEYDOWN ### 
                if event.type == pygame.KEYDOWN:

                    #getResourcepath("Arm_controls.png")
                    ### base
                    if event.key==K_z:
                        mods = pygame.key.get_mods()
                        if mods & pygame.KMOD_SHIFT:
                            arm_controls.base_pwm = arm_controls.base_pwm - step
                        
                        else:
                            arm_controls.base_pwm = arm_controls.base_pwm + step
                    ###

                    ### shoulder
                    elif event.key==K_x:
                        mods = pygame.key.get_mods()
                        if mods & pygame.KMOD_SHIFT:
                            arm_controls.shoulder_pwm = arm_controls.shoulder_pwm - step
                        
                        else:
                            arm_controls.shoulder_pwm = arm_controls.shoulder_pwm + step

                    ###

                    ### elbow
                    elif event.key==K_c:
                        mods = pygame.key.get_mods()
                        if mods & pygame.KMOD_SHIFT:
                            arm_controls.elbow_pwm = arm_controls.elbow_pwm - step
                        
                        else:
                            arm_controls.elbow_pwm = arm_controls.elbow_pwm + step
                    ###

                    ### wrist up down
                    elif event.key==K_v:
                        mods = pygame.key.get_mods()
                        if mods & pygame.KMOD_SHIFT:
                            arm_controls.wrist_pwm = arm_controls.wrist_pwm - step
                        
                        else:
                            arm_controls.wrist_pwm = arm_controls.wrist_pwm + step
                    ###

                    ### wrist rot
                    elif event.key==K_b:
                        mods = pygame.key.get_mods()
                        if mods & pygame.KMOD_SHIFT:
                            arm_controls.wrist_rot_pwm = arm_controls.wrist_rot_pwm - step
                        
                        else:
                            arm_controls.wrist_rot_pwm = arm_controls.wrist_rot_pwm + step
                    ###
                        

                    ### gripper open close
                    elif event.key==K_n:
                        mods = pygame.key.get_mods()
                        if mods & pygame.KMOD_SHIFT:
                            arm_controls.gripper_pwm = arm_controls.gripper_pwm - step
                        
                        else:
                            arm_controls.gripper_pwm = arm_controls.gripper_pwm + step
                    ###
                        

                    ### EXIT on esc ascii=27 ###
                    elif(event.key == 27):
                            pygame.display.quit()
                            pygame.quit()
                            sys.exit()
                    ###

                    ### Reset and Stop 
                    elif(event.key==K_l):
                        arm_controls.base_pwm = 750
                        arm_controls.shoulder_pwm = 850
                        arm_controls.elbow_pwm = 1400
                        arm_controls.wrist_rot_pwm = 2200
                        arm_controls.wrist_pwm = 800
                        arm_controls.gripper_pwm = 200
                    
                    elif(event.key==K_k):
                        arm_controls.command = "k"
                    ###

                    ### keyup asci events
                    elif(event.key<256):
                        arm_controls.command = chr(event.key)

                    pub.publish(arm_controls)

                ### stop on any KEYUP ###
                if event.type == pygame.KEYUP:

                    if event.key == K_q or event.key == K_a:
                        arm_controls.command = "1"
                    elif event.key == K_w or event.key == K_s:
                        arm_controls.command = "2"
                    elif event.key == K_e or event.key == K_d:
                        arm_controls.command = "3"
                    elif event.key == K_r or event.key == K_f:
                        arm_controls.command = "4"
                    elif event.key == K_t or event.key == K_g:
                        arm_controls.command = "5"
                    elif event.key == K_h or event.key == K_y:
                        arm_controls.command = "6"

                    pub.publish(arm_controls)

        except Exception as e:
            print(e)

        screen.fill(WHITE)
        dis()


### init ros node
rospy.init_node('arm_gcs')
pub = rospy.Publisher('arm/command',ArmControls,queue_size=2)
###



pygame.init()
size = width, height = 800,500
screen = pygame.display.set_mode(size)
pygame.display.set_caption("URC ARM Controls")
myfont = pygame.font.SysFont("Liberation Serif", 20)
WHITE = (255,255,255)


### init pygame
pygame.init()
size = width, height = 800,500
screen = pygame.display.set_mode(size)
pygame.display.set_caption("URC ARM Controls")
myfont = pygame.font.SysFont("Liberation Serif", 20)
WHITE = (255,255,255)
img=pygame.image.load(utils.getResourcepath("Arm_controls.png",sys.argv[0])).convert()
#img=pygame.image.load("Arm_controls.png").convert()

step = 20
###

### init drive command
arm_controls = ArmControls()
arm_controls.base_pwm = 750
arm_controls.shoulder_pwm = 850
arm_controls.elbow_pwm = 1400
arm_controls.wrist_rot_pwm = 2200
arm_controls.wrist_pwm = 800
arm_controls.gripper_pwm = 200
###

if __name__ == '__main__':
    start()

