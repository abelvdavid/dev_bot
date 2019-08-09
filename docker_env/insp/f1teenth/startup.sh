#!/bin/bash

set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
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
printf "Simulation for F1/10 docker image!"
printf "\n\n"
printf "Lets play ball\n"
# Start a bash shell
/bin/bash -c bash
