execute_process(COMMAND "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
