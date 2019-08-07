#!/bin/bash
xhost +local:
docker run -it --net=host \
  --user=$(id -u) \
  -e DISPLAY=$DISPLAY \
  -e QT_GRAPHICSSYSTEM=native \
  -e USER=$USER \
  --workdir=/home/$USER \
  -v "/tmp/.X11-unix:/tmp/.X11-unix" \
  -v "/etc/group:/etc/group:ro" \
  -v "/etc/passwd:/etc/passwd:ro" \
  -v "/etc/shadow:/etc/shadow:ro" \
  -v "/etc/sudoers.d:/etc/sudoers.d:ro" \
  -v "/home/$USER/Data/ignitarium/projects:/home/david/" \
  --device=/dev/dri:/dev/dri \
  --name=v1_c_sim \
  v1_dev_bot:melodic
