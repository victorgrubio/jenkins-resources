#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i ./jenkins/ssh/prod /tmp/.auth production@10.123.165.170:/tmp/.auth
scp -i ./jenkins/ssh/prod ./jenkins/deploy/publish.sh production@10.123.165.170:/tmp/publish.sh
ssh -i ./jenkins/ssh/prod production@10.123.165.170 "/tmp/publish.sh"