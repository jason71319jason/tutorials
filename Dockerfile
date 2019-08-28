FROM p4lang/p4c:latest
LABEL description="For p4 tutorial" date="20190829"

ENV DEP curl \
  iproute2 \
  iputils-ping \
  net-tools \
  openvswitch-switch \
  openvswitch-testcontroller \
  tcpdump \
  vim \
  x11-xserver-utils \
  xterm \
  python-dev \
  build-essential \
  g++ \
  sudo \
  git

COPY . /tutorials/
WORKDIR /tutorials/

RUN apt-get update && \
    apt-get install -y --no-install-recommends $DEP

RUN pip install psutil
RUN pip install --upgrade grpcio
RUN curl -o- -L https://raw.githubusercontent.com/TakeshiTseng/vim-language-p4/master/install.sh
RUN git clone git://github.com/mininet/mininet && mininet/util/install.sh -a
