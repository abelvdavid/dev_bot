#!/bin/bash
xhost +local:
sudo docker run -it --net=host --privileged\
  -e DISPLAY=$DISPLAY \
  -e QT_GRAPHICSSYSTEM=native \
  -v "/tmp/.X11-unix:/tmp/.X11-unix" \
  --name=f110sim \
  f110sim:kinetic
