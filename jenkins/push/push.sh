#!/bin/bash

echo "*******************"
echo "** Pushing image **"
echo "*******************"

IMAGE="maven-project"


docker login -u jplmoreira -p $PASS
docker tag $IMAGE:$BUILD_TAG jplmoreira/$IMAGE:$BUILD_TAG
docker push jplmoreira/$IMAGE:$BUILD_TAG
