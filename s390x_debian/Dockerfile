FROM s390x/debian:bookworm

LABEL description="gcc-12 s390x glibc"

RUN apt update && apt upgrade -y
RUN apt-get install -y build-essential gdb git wget
RUN apt-get install -y ninja-build cmake automake autoconf meson
#RUN apt-get install -y automake autoconf meson
RUN apt-get clean && apt-get autoclean

RUN mkdir -p /home/projects
WORKDIR /home/projects
