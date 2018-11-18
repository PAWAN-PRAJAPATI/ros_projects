#!/usr/bin/env python
from isac.srv import *
from isac.msg import ArmAngles, ArmPosition
from geometry_msgs.msg import Point
import rospy
import ikpy
import numpy as np
from ikpy import plot_utils

#!/usr/bin/env python

from trac_ik_python.trac_ik import IK

my_chain = ikpy.chain.Chain.from_urdf_file("/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/urdf/robot_2link.urdf")

def get_final_angles(req):
    # Get your URDF from somewhere
    position = req.position
    target_vector = [position.x,position.y,position.z]
    target_frame = np.eye(4)
    target_frame[:3, 3] = target_vector


    #my_chain.plot( [ 0,0,0,0,0,0],ax, target=target_vector)
    #my_chain.plot(my_chain.inverse_kinematics(target_frame), ax, target=target_vector)
    angles=my_chain.inverse_kinematics(target_frame)
    print(angles)
    arm_angles_final = ArmAngles()
    arm_angles_final.base = angles[1]
    arm_angles_final.shoulder = angles[2]
    arm_angles_final.elbow = angles[3]
    arm_angles_final.gripper = angles[4]
                        
    print(position)
    return (arm_angles_final)


def get_final_position(req):
     real_frame = my_chain.forward_kinematics([0,req.arm_angles.base,req.arm_angles.shoulder,req.arm_angles.elbow,req.arm_angles.gripper,0])
     print(real_frame)
     return ArmPosition()

def IK_server():
    rospy.init_node('ik_server')
    s = rospy.Service('ik_srv', IKsrv, get_final_angles)
    #s1 = rospy.Service('fk_srv', FKsrv, get_final_position)

    print "Ready to srve ik."
    rospy.spin()

if __name__ == "__main__":
    IK_server()


'''
import rospy
from trac_ik_python.trac_ik import IK


with open('/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/urdf/robot_2link.urdf', 'r') as myfile:
  data = myfile.read()

# Get your URDF from somewhere
#urdf_str = rospy.get_param('/robot_description')
urdf_str = data
print(urdf_str)
ik_solver = IK("base_link",
            "gripper",
            urdf_string=urdf_str)
seed_state = [0.0] * ik_solver.number_of_joints

ans = ik_solver.get_ik(seed_state,
                1, 0.4, 0.1,  # X, Y, Z
                1.0, 0.0, 0.0, 1.0)  # QX, QY, QZ, QW
                    
print(ans)
'''
'''
import ikpy
import numpy as np
from ikpy import plot_utils
import matplotlib.pyplot as plt
from matplotlib import animation

x=0.4
y=0.2
z=0.4
my_chain = ikpy.chain.Chain.from_urdf_file("/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/urdf/robot_2link.urdf")
target_vector = [x,y,z]
target_frame = np.eye(4)
target_frame[:3, 3] = target_vector


ax = plot_utils.init_3d_figure()
my_chain.plot( [ 0,0,0,0,0,0],ax, target=target_vector)
my_chain.plot(my_chain.inverse_kinematics(target_frame), ax, target=target_vector)
angles=my_chain.inverse_kinematics(target_frame)
print(angles)
#plt.xlim(-1,1)
#plt.ylim(-1,1)
#plt.show()
'''