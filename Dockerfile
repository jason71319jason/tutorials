FROM p4lang/p4c:latest
LABEL description="For p4 tutorial" date="20190827"

ENV DEP curl \
  mininet \
	iproute2 \
  iputils-ping \
  mininet \
  net-tools \
  openvswitch-switch \
  openvswitch-testcontroller \
  tcpdump \
  vim \
  x11-xserver-utils \
  xterm \
	python-dev \
	build-essential \
	g++

COPY . /tutorials/
WORKDIR /tutorials/

RUN apt-get update && \
    apt-get install -y --no-install-recommends 	$DEP

RUN pip install psutil
RUN pip install --upgrade grpcio


#EXPOSE 6633 6653 6640 6000
