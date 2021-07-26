#!/bin/bash

docker run -it --rm --net=host --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" \
    --volume="$XAUTHORITY:/root/.Xauthority:rw" --name="heron-sim-basic" \
    --privileged heron-sim-basic $1
