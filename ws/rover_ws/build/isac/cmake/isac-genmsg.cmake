# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "isac: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iisac:/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(isac_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" NAME_WE)
add_custom_target(_isac_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "isac" "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" "isac/ArmPosition:isac/ArmAngles:std_msgs/Header"
)

get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" NAME_WE)
add_custom_target(_isac_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "isac" "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" NAME_WE)
add_custom_target(_isac_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "isac" "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/isac
)
_generate_msg_cpp(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/isac
)

### Generating Services
_generate_srv_cpp(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv"
  "${MSG_I_FLAGS}"
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg;/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/isac
)

### Generating Module File
_generate_module_cpp(isac
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/isac
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(isac_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(isac_generate_messages isac_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" NAME_WE)
add_dependencies(isac_generate_messages_cpp _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" NAME_WE)
add_dependencies(isac_generate_messages_cpp _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" NAME_WE)
add_dependencies(isac_generate_messages_cpp _isac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(isac_gencpp)
add_dependencies(isac_gencpp isac_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS isac_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/isac
)
_generate_msg_eus(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/isac
)

### Generating Services
_generate_srv_eus(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv"
  "${MSG_I_FLAGS}"
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg;/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/isac
)

### Generating Module File
_generate_module_eus(isac
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/isac
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(isac_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(isac_generate_messages isac_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" NAME_WE)
add_dependencies(isac_generate_messages_eus _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" NAME_WE)
add_dependencies(isac_generate_messages_eus _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" NAME_WE)
add_dependencies(isac_generate_messages_eus _isac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(isac_geneus)
add_dependencies(isac_geneus isac_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS isac_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/isac
)
_generate_msg_lisp(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/isac
)

### Generating Services
_generate_srv_lisp(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv"
  "${MSG_I_FLAGS}"
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg;/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/isac
)

### Generating Module File
_generate_module_lisp(isac
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/isac
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(isac_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(isac_generate_messages isac_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" NAME_WE)
add_dependencies(isac_generate_messages_lisp _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" NAME_WE)
add_dependencies(isac_generate_messages_lisp _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" NAME_WE)
add_dependencies(isac_generate_messages_lisp _isac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(isac_genlisp)
add_dependencies(isac_genlisp isac_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS isac_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/isac
)
_generate_msg_nodejs(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/isac
)

### Generating Services
_generate_srv_nodejs(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv"
  "${MSG_I_FLAGS}"
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg;/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/isac
)

### Generating Module File
_generate_module_nodejs(isac
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/isac
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(isac_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(isac_generate_messages isac_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" NAME_WE)
add_dependencies(isac_generate_messages_nodejs _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" NAME_WE)
add_dependencies(isac_generate_messages_nodejs _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" NAME_WE)
add_dependencies(isac_generate_messages_nodejs _isac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(isac_gennodejs)
add_dependencies(isac_gennodejs isac_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS isac_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac
)
_generate_msg_py(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac
)

### Generating Services
_generate_srv_py(isac
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv"
  "${MSG_I_FLAGS}"
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg;/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac
)

### Generating Module File
_generate_module_py(isac
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(isac_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(isac_generate_messages isac_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/srv/IKsrv.srv" NAME_WE)
add_dependencies(isac_generate_messages_py _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmPosition.msg" NAME_WE)
add_dependencies(isac_generate_messages_py _isac_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg/ArmAngles.msg" NAME_WE)
add_dependencies(isac_generate_messages_py _isac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(isac_genpy)
add_dependencies(isac_genpy isac_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS isac_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/isac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/isac
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(isac_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(isac_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/isac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/isac
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(isac_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(isac_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/isac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/isac
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(isac_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(isac_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/isac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/isac
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(isac_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(isac_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/isac
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(isac_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(isac_generate_messages_py geometry_msgs_generate_messages_py)
endif()
