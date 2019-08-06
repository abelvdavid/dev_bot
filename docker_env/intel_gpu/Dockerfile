FROM osrf/ros:melodic-desktop-full

LABEL maintainer="Abel V David <abeldavid.89@gmail.com>"

#  It never interacts with you  at  all,
#  and  makes  the  default  answers  be used for all questions.
ENV DEBIAN_FRONTEND noninteractive
ENV ROS_DISTRO melodic

RUN apt-get update \
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



ADD image /
RUN pip install setuptools wheel && pip install -r /usr/lib/web/requirements.txt

# Using Intel only http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
RUN \
  apt-get update && \
  apt-get -y install libgl1-mesa-glx libgl1-mesa-dri && \
  rm -rf /var/lib/apt/lists/*




RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen

# Get gazebo binaries
RUN apt-get clean

# Install the racecar simulator
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    ros-melodic-tf2-geometry-msgs \
    ros-melodic-ackermann-msgs \
    ros-melodic-joy \
    ros-melodic-map-server \
    build-essential\
    python-rosinstall-generator \
    ros-melodic-ros-control \
    ros-melodic-gazebo-ros-control \
    ros-melodic-ros-controllers \
    ros-melodic-navigation qt4-default \
    ros-melodic-serial \
    ros-melodic-teb-local-planner*

# set user ros and sudo
RUN adduser --gecos "ROS User" --home /home/david --disabled-password david && \
    usermod -a -G dialout david && \
    echo "david ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/99_aptget

# switch to user ros, but the workdir is still /, not /home/ros
USER david


# setup ROS workspace
RUN mkdir -p catkin_ws/src
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws/src; catkin_init_workspace'
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws; catkin_make'

# Clone and build the F1/10 tutorials repository
RUN mkdir -p github/f1tenth_gtc_tutorial
RUN git clone https://github.com/linklab-uva/f1tenth_gtc_tutorial github/f1tenth_gtc_tutorial
RUN cp -r github/f1tenth_gtc_tutorial/src/ catkin_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws; catkin_make install'

# Clone and build the MIT tutorials repository
RUN mkdir -p github/mit_racecar
RUN git clone https://github.com/mit-racecar/racecar_simulator.git
RUN cp -r github/mit_racecar/src/ catkin_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws; catkin_make install'

# Clone and build the Hypha-RACECAR tutorials repository
RUN mkdir -p github/hypha_racecar
RUN git clone https://github.com/Hypha-ROS/hypharos_racecar.git
RUN cp -r github/hypha_racecar/src/ catkin_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws; catkin_make install'

# Clone and build the Hypha-RACECAR tutorials repository
RUN mkdir -p github/hypha_racecar
RUN git clone https://github.com/Hypha-ROS/hypharos_racecar.git
RUN cp -r github/hypha_racecar/src/ catkin_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws; catkin_make install'

# Clone and build the Hypha-MINICAR tutorials repository
RUN mkdir -p github/hypha_minicar
RUN git clone https://github.com/Hypha-ROS/hypharos_minicar.git
RUN cp -r github/hypha_minicar/src/ catkin_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/david/catkin_ws; catkin_make install'


USER root
# Copy in config files
COPY ./config/bash.bashrc /etc/
COPY ./config/default.rviz /root/.rviz/
COPY ./startup.sh /

EXPOSE 80
WORKDIR /home/david
ENV HOME=/home/david \
    SHELL=/bin/bash

ENTRYPOINT ["/startup.sh"]




# RUN mkdir -p /tmp/workspace/src
# COPY prius_description /tmp/workspace/src/prius_description
# COPY prius_msgs /tmp/workspace/src/prius_msgs
# COPY car_demo /tmp/workspace/src/car_demo
# RUN /bin/bash -c 'cd /tmp/workspace \
#  && source /opt/ros-melodic/setup.bash \
#  && catkin_make'
# CMD ["/bin/bash", "-c", "source /opt/ros-melodic/setup.bash && source /tmp/workspace/devel/setup.bash && roslaunch car_demo demo.launch"]
# ENV SIM_WS /opt/ros/sim_ws
# RUN mkdir -p $SIM_WS/src
# RUN git clone https://github.com/mit-racecar/racecar_simulator.git
# RUN mv racecar_simulator $SIM_WS/src
# RUN /bin/bash -c 'source /opt/ros/$ROS_DISTRO/setup.bash; cd $SIM_WS; catkin_make;'


# Make a racecar workspace chained to the sim repo
#RUN mkdir -p /racecar_ws/src
#RUN /bin/bash -c 'source $SIM_WS/devel/setup.bash; cd racecar_ws; catkin_make;'
