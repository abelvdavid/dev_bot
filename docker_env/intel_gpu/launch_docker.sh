#!/bin/bash
xhost +local:
sudo docker run -it --net=host --privileged\
  -e DISPLAY=$DISPLAY \
  -e QT_GRAPHICSSYSTEM=native \
  -v "/tmp/.X11-unix:/tmp/.X11-unix" \
  -v "/home/$USER/Data/ignitarium/projects:/home/david/vol" \
  --name=v1_c_sim \
  v1_dev_bot:melodic
