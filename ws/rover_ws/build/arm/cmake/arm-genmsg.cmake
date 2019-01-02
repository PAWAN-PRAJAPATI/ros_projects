# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arm: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iarm:/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" NAME_WE)
add_custom_target(_arm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arm" "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arm
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm
)

### Generating Services

### Generating Module File
_generate_module_cpp(arm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arm_generate_messages arm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" NAME_WE)
add_dependencies(arm_generate_messages_cpp _arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_gencpp)
add_dependencies(arm_gencpp arm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(arm
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arm
)

### Generating Services

### Generating Module File
_generate_module_eus(arm
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arm
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(arm_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(arm_generate_messages arm_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" NAME_WE)
add_dependencies(arm_generate_messages_eus _arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_geneus)
add_dependencies(arm_geneus arm_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arm
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm
)

### Generating Services

### Generating Module File
_generate_module_lisp(arm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arm_generate_messages arm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" NAME_WE)
add_dependencies(arm_generate_messages_lisp _arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_genlisp)
add_dependencies(arm_genlisp arm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(arm
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arm
)

### Generating Services

### Generating Module File
_generate_module_nodejs(arm
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arm
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(arm_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(arm_generate_messages arm_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" NAME_WE)
add_dependencies(arm_generate_messages_nodejs _arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_gennodejs)
add_dependencies(arm_gennodejs arm_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arm
  "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm
)

### Generating Services

### Generating Module File
_generate_module_py(arm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arm_generate_messages arm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg/ArmControls.msg" NAME_WE)
add_dependencies(arm_generate_messages_py _arm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arm_genpy)
add_dependencies(arm_genpy arm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arm_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arm
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(arm_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arm_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arm
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(arm_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arm/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arm_generate_messages_py std_msgs_generate_messages_py)
endif()
