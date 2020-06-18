#!/bin/bash

echo "********************"
echo "*** Testing code ***"
echo "********************"

docker run --rm -v $PWD/java-app:/app -v $PWD/.m2:/root/.m2 -w /app maven:3-alpine mvn "$@"
