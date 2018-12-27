import ikpy
import numpy as np
from ikpy import plot_utils
import matplotlib.pyplot as plt
from matplotlib import animation

x=0.4
y=0.6
z=0.7
my_chain = ikpy.chain.Chain.from_urdf_file("/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/urdf/robot_2link.urdf")
target_vector = [x,y,z]
target_frame = np.eye(4)
target_frame[:3, 3] = target_vector


ax = plot_utils.init_3d_figure()
my_chain.plot( [ 0,0,0,0,0,0],ax, target=target_vector)
my_chain.plot(my_chain.inverse_kinematics(target_frame), ax, target=target_vector)
angles=my_chain.inverse_kinematics(target_frame)
print(angles)
plt.xlim(-1,1)
plt.ylim(-1,1)
plt.show()