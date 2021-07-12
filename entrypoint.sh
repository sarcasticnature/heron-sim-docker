#!/bin/bash

source /opt/ros/melodic/setup.bash

if [ -f /catkin_ws/devel/setup.bash ]
then
    source /catkin_ws/devel/setup.bash
fi

exec "$@"

