#!/bin/bash

# DOCKER HUB Registry
##-------------------------------
VERSION=0.0.1
DOCKER_REGISTRY_HOST="breitsmiley"
IMAGE_NAME="opt-nest-dev"
BASIC_TAG_NAME="$DOCKER_REGISTRY_HOST/$IMAGE_NAME"
TAG_LATEST="$BASIC_TAG_NAME:latest"
TAG_VERSION="$BASIC_TAG_NAME:$VERSION"

##-------------------------------
docker build -t ${TAG_LATEST} -t ${TAG_VERSION} . \
&& docker push ${TAG_LATEST} \
&& docker push ${TAG_VERSION}

