#!/bin/bash
set -e

source /opt/ros/indigo/setup.bash

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
wstool init

cd ~/catkin_ws/src
git clone http://github.com/ethz-asl/rotors_simulator.git
git clone http://github.com/ethz-asl/mav_comm.git

cd ~/catkin_ws/
catkin init
catkin build
