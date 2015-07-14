### Build

> Build the Dockerfile using the build command:

    docker build -t rotors_simulator ./rotors_simulator/

### Run container

> Run the container and launch the defult demo:

    docker run -it --name=rotors_simulator rotors_simulator

### Talk to container

> by opening new interactive bash session in container in a new terminal

    docker exec -it rotors_simulator bash

> find ip address of container

    ifconfig


### Connect to container

>    By point gzclient to container ip address in a new terminal

    export GAZEBO_MASTER_URI=http://<gzserver-ip-address-here>:11345
