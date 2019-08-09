FROM ubuntu:16.04

LABEL maintainer="Abel V David <abeldavid.89@gmail.com>"

#  It never interacts with you  at  all,
#  and  makes  the  default  answers  be used for all questions.
ENV DEBIAN_FRONTEND noninteractive
ENV ROS_DISTRO kinetic

RUN apt-get update \
    && apt-get install -y --no-install-recommends --allow-unauthenticated \
    && apt-get install -y \
        wget \
        lsb-release \
        sudo \
        mesa-utils \
        vlc flvstreamer ffmpeg \
        # Install some cool programs
    && apt-get install -y \
        vim \
        nano \
        gedit \
        xterm \
        screen \
        tmux \
        locales\
        unzip \
        curl \
        terminator \
        aptitude\
    && apt-get clean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN apt update \
    && apt install -y software-properties-common

RUN apt-get install -y python-pip

RUN apt-get install -y python3-pip

RUN pip install setuptools wheel

# Using Intel only http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
RUN \
  apt-get update && \
  apt-get -y install libgl1-mesa-glx libgl1-mesa-dri && \
  rm -rf /var/lib/apt/lists/*




RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen

# Get gazebo binaries
RUN apt-get clean

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    python-rosdep \
    python-rosinstall \
    python-vcstools \
    && rm -rf /var/lib/apt/lists/*

# bootstrap rosdep
RUN rosdep init \
    && rosdep update

# install ros packages
ENV ROS_DISTRO kinetic
RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-core=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

# ===== ros-base desktop percept robot and desktop full install

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-base=1.3.2-0* \
    ros-kinetic-robot=1.3.2-0* \
    ros-kinetic-desktop=1.3.2-0* \
    #ros-kinetic-perception=1.3.2-0* \
    ros-kinetic-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

RUN rosdep update

# Install dependencies for the F1/10 Tutorials
RUN apt-get update && apt-get install -y \
    python-rosinstall-generator \
    ros-kinetic-ros-control \
    ros-kinetic-gazebo-ros-control \
    ros-kinetic-ros-controllers \
    ros-kinetic-navigation qt4-default \
    ros-kinetic-ackermann-msgs \
    ros-kinetic-serial \
    ros-kinetic-teb-local-planner*
# Update Gazebo 7
RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
RUN apt-get update && apt-get --yes install -y gazebo7 libignition-math2-dev

# setup ROS workspace
RUN mkdir -p /home/catkin_ws/src
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/catkin_ws/src; catkin_init_workspace'
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/catkin_ws; catkin_make'

# Clone and build the F1/10 tutorials repository
RUN mkdir -p /home/github/f1tenth_gtc_tutorial
RUN git clone https://github.com/linklab-uva/f1tenth_gtc_tutorial /home/github/f1tenth_gtc_tutorial
RUN cp -r /home/github/f1tenth_gtc_tutorial/src/ /home/catkin_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/catkin_ws; catkin_make install'

EXPOSE 80
WORKDIR /home/
ENV HOME=/home/ubuntu \
    SHELL=/bin/bash

ENTRYPOINT ["/startup.sh"]

