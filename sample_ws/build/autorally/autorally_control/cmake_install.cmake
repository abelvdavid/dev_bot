# Install script for directory: /home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_control

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_control" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/devel/include/autorally_control/gpsWaypoint_paramsConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_control" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/devel/include/autorally_control/PathIntegralParamsConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/autorally_control" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/devel/lib/python2.7/dist-packages/autorally_control/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/devel/lib/python2.7/dist-packages/autorally_control/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/autorally_control" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/devel/lib/python2.7/dist-packages/autorally_control/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/catkin_generated/installspace/autorally_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_control/cmake" TYPE FILE FILES
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/catkin_generated/installspace/autorally_controlConfig.cmake"
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/catkin_generated/installspace/autorally_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_control" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_control/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_control/launch" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_control/launch/" FILES_MATCHING REGEX "/[^/]*\\.launch$" REGEX "/[^/]*\\.machine$" REGEX "/[^/]*\\.yaml$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_control" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_control/include/autorally_control/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_control" TYPE DIRECTORY FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_control/cfg/cpp/autorally_control/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_control" TYPE FILE FILES "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_control/nodelet_plugins.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/src/ConstantSpeedController/cmake_install.cmake")
  include("/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/src/joystick/cmake_install.cmake")
  include("/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/src/gpsWaypoint/cmake_install.cmake")
  include("/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_control/src/path_integral/cmake_install.cmake")

endif()

