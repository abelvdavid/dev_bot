#!/bin/bash

set -e

# setup ros environment
source "/opt/ros/melodic/setup.bash"
source "/home/catkin_ws/devel/setup.bash"
exec "$@"


# If the car number is set, set up ROS hostnames
if [ -n "$1" ]; then
  export CAR_NUMBER=$1
  echo "192.168.1.$CAR_NUMBER racecar" >> /etc/hosts
  export ROS_MASTER_URI=http://racecar:11311
  export ROS_IP=$(hostname -I | grep -o 192.168.1.[0-9]* | head -1)
  if [ -z "$ROS_IP" ]; then
    printf "You are not on the 192.168.1.* network!\n"
    printf "Are you connected to your car's router?\n\n"
  fi
fi


# Welcome message
IP=$(hostname -I | grep -o [0-9.]* | head -1)
printf "Welcome to the racecar docker image!"
printf "\n\n"
printf "To use graphical programs like rviz, navigate to"
printf "\n"
printf "http://$IP:6080/vnc.html"
printf "\n\n"
printf "Alternatively, point any VNC client to"
printf "\n"
printf "$IP:5900"
printf "\n\n"
printf "For instructions on connecting to a racecar,\n"
printf "mounting a local drive, connecting to a joystick,\n"
printf "etc. reference /README.md\n"

# Start a bash shell
/bin/bash -c bash
