set -e
set -x

xhost +si:localuser:root
sudo docker run --name p4_tutorial -it --privileged -e DISPLAY              -v /tmp/.X11-unix:/tmp/.X11-unix              -v /lib/modules:/lib/modules              p4lang/tutorials
