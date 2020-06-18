#!/bin/bash

echo "********************"
echo "*** Building jar ***"
echo "********************"

docker run --rm -v $PWD/java-app:/app -v $PWD/.m2:/root/.m2 -w /app maven:3-alpine mvn "$@"
