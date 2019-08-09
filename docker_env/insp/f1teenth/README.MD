
## Build the image

>sudo docker build -t f110sim:kinetic .

## Run the image
>./launch_docker.sh


 # ros_melodic_docker

## TO SETUP

## Step 01

docker build -t kinetic:dev .


## Step 02

./launch_docker.sh

## Step 03

Once inside the shell terminal always source 

source /opt/ros/kinetic/setup.bash

## TO RUN MULTIPLE TERMINALS

Listed tqo ways to run multiple terminals

### 1. The Docker EXEC Route:

#### Executing From Docker without root command

sudo docker exec -ti v1_c_sim /bin/bash
source /opt/ros/kinetic/setup.bash

#### Executing From Docker with root command

docker exec -i -u 0 ros-kinetic-dev bash
source /opt/ros/kinetic/setup.bash

### 2. The TMUX Route:

Run tmux in the original terminal window and then create as many new terminal windows as possible. Note that tmux won’t work in a terminal window you got through docker exec (the same ttyallocation issue).

## TO REUSE CONTAINERS

### 1. Container Shows up in docker ps output:

As such, simply doing a docker exec command will get you back in.

### Original Terminal 

docker attach <container name>

### 2. Container does not show up in docker ps output:

sudo docker start -ai v1_c_sim

## TO DO

# set user ros and sudo
RUN adduser --gecos "ROS User" --home /home/ros --disabled-password ros && \
    usermod -a -G dialout ros && \
    echo "ros ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/99_aptget

# switch to user ros, but the workdir is still /, not /home/ros
USER ros
