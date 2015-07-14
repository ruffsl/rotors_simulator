FROM osrf/ros:indigo-desktop-full

# install other depending packages
RUN apt-get update && apt-get install -q -y \
    ros-indigo-joy \
    ros-indigo-octomap-ros \
    python-wstool \
    python-catkin-tools \
    && rm -rf /var/lib/apt/lists/*

COPY ./build.sh /root/
RUN /root/build.sh

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./mav_empty_world.launch /root/catkin/src/rotors_simulator/rotors_gazebo/launch/mav_empty_world.launch
COPY ./demo_entrypoint.sh /

ENTRYPOINT ["/demo_entrypoint.sh"]
CMD ["roslaunch rotors_gazebo mav_empty_world.launch mav_name:=firefly"]
