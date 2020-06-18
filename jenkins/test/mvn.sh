#!/bin/bash

echo "********************"
echo "*** Testing code ***"
echo "********************"

WORKSPACE=/Users/jplmoreira/Documents/Projects/jenkins/jenkins_home/workspace/pipeline

docker run --rm -v $WORKSPACE/java-app:/app -v $WORKSPACE/.m2:/root/.m2 -w /app maven:3-alpine mvn "$@"
