#!/bin/sh

if [ -z "$DOCKER_USERNAME" ] ; then
    echo "\$DOCKER_USERNAME has not been set"
    exit 1
fi
if [ -z "$DOCKER_PASSWORD" ] ; then
    echo "\$DOCKER_PASSWORD has not been set"
    exit 1
fi

printenv DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin

#---

set -ex

docker buildx create --name wbuilder
docker buildx use wbuilder
docker buildx inspect --bootstrap
docker buildx build --push --platform linux/s390x --tag wdlkmpx/gcc:s390x_alpine . s390x_alpine
docker buildx rm wbuilder
 
#docker buildx create --name wbuilder
#docker buildx use wbuilder
#docker buildx inspect --bootstrap
#docker buildx build --push --platform linux/s390x --tag wdlkmpx/gcc:s390x_debian . s390x_debian
#docker buildx rm wbuilder
