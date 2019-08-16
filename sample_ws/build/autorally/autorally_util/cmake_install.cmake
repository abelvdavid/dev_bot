# Install script for directory: /home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_util

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_util/catkin_generated/installspace/autorally_util.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_util/cmake" TYPE FILE FILES
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_util/catkin_generated/installspace/autorally_utilConfig.cmake"
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_util/catkin_generated/installspace/autorally_utilConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_util" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_util/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_util/config" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_util/config/" FILES_MATCHING REGEX "/[^/]*$")
endif()

