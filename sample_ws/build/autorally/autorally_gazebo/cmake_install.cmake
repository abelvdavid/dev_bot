# Install script for directory: /home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/install")
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
  include("/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo/catkin_generated/installspace/autorally_gazebo.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_gazebo/cmake" TYPE FILE FILES
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo/catkin_generated/installspace/autorally_gazeboConfig.cmake"
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo/catkin_generated/installspace/autorally_gazeboConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_gazebo" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/autorally_gazebo" TYPE PROGRAM FILES
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo/nodes/autorally_controller.py"
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo/nodes/ground_truth_republisher.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_gazebo/launch" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo/launch/" FILES_MATCHING REGEX "/[^/]*\\.launch$" REGEX "/[^/]*\\.machine$" REGEX "/[^/]*\\.yaml$" REGEX "/[^/]*\\.urdf$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_gazebo/config" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo/config/" FILES_MATCHING REGEX "/[^/]*\\.yaml$")
endif()

