cd sims_ws/src
git clone https://github.com/wjwwood/serial.git
git clone https://github.com/mit-racecar/racecar.git
git clone https://github.com/mlab-upenn/racecar-simulator.git
git clone https://github.com/mit-racecar/vesc.git
git clone https://github.com/ros-drivers/ackermann_msgs.git
git clone https://github.com/mlab-upenn/f1_10_sim.git


catkin_init_workspace


cd ..
catkin_make install


echo "source ~/Data/ignitarium/projects/robotics/dev_bot_v1/ros_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc


sudo apt-get install ros-kinetic-ros-control ros-kinetic-gazebo-ros-control ros-kinetic-ros-controllers


roscore


