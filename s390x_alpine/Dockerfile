FROM s390x/alpine:3.17

LABEL description="gcc-12 s390x musl"

RUN apk add --no-cache build-base gdb git wget
#RUN apk add --no-cache samurai cmake automake autoconf meson

RUN mkdir -p /home/projects
WORKDIR /home/projects
