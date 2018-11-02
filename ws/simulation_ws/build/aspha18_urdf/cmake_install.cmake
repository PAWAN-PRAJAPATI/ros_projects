# Install script for directory: /home/pawan/Desktop/UD/ROS/ws/simulation_ws/src/aspha18_urdf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/build/aspha18_urdf/catkin_generated/installspace/aspha18_urdf.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aspha18_urdf/cmake" TYPE FILE FILES
    "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/build/aspha18_urdf/catkin_generated/installspace/aspha18_urdfConfig.cmake"
    "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/build/aspha18_urdf/catkin_generated/installspace/aspha18_urdfConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aspha18_urdf" TYPE FILE FILES "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/src/aspha18_urdf/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aspha18_urdf" TYPE DIRECTORY FILES
    "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/src/aspha18_urdf/launch"
    "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/src/aspha18_urdf/meshes"
    "/home/pawan/Desktop/UD/ROS/ws/simulation_ws/src/aspha18_urdf/urdf"
    )
endif()

