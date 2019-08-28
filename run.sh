set -e
set -x

sudo docker run -it --privileged -e DISPLAY              -v /tmp/.X11-unix:/tmp/.X11-unix              -v /lib/modules:/lib/modules              p4lang/tutorials
