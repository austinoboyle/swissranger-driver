# SwissRanger

This project contains a copy of the ROS driver for the Mesa Swiss Ranger 
SR4K ToF cameras. It also contains the Swiss Ranger SR4K Linux drivers (which are no longer freely available - Mesa Imaging no longer exists), and a script to install them.

## Installing Linux Swiss Ranger driver

Type the following commands:

    cd <project's directory> # Change into the project's directory
    sudo install_sr.bash     # Execute the install script as a super user

## Running node
Compile this project as any other ROS package (using `catkin_make`) and you're good to go!

Note: you may need to update your local ros package repository (`rospack profile`) before roslaunch can find the swissranger package.
