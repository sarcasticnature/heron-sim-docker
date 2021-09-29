# Heron Simulator Dockerfile
Simulation environments for the Clearpath Heron robot

**Dockerfile.basic**
* The default (unedited) simulation provided by Clearpath, using their Ubuntu  
packages

**Dockerfile.custom**
* An image that utilizes forks of the Clearpath source repositories, with  
changes to work with the DAISy/ORE labs' objectives
* Contains a pre-built catkin workspace with all of the necessary files and an  
entrypoint that will source the catkin workspace's `devel/setup.bash` when run
* The default command launches the simulation
* Does not include `move_base`, `heron_navigation`, or `gps_navigation`

**Dockerfile.nav**
* An image with a simulation environment set up for full autonomous simulation
* Utilizes `Dockerfile.custom` as its base image
* Includes `move_base`, `heron_navigation`, and `gps_navigation`

To use the gazebo simulation, execute one of the run scripts, as there are a
slew of options needed to expose ROS running in the container to the local
machine (to help with development). The scripts expect image names to be
`heron-sim-basic`, `heron-sim-custom`, and `heron-sim-nav`, respectively.

