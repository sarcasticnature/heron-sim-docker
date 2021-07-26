#!/bin/bash

docker run -it --rm --net=host --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" \
    --volume="$XAUTHORITY:/root/.Xauthority:rw" --name="heron-sim-nav" \
    --privileged heron-sim-nav $1
