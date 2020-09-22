#!/bin/bash
echo "******************"
echo "** Building Jar **"
echo "******************"

# Builds a docker container to compile the maven app
# Launch the command specified in the arguments
docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"