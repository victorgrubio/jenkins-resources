#!/bin/bash

echo "*******************"
echo "** Pushing image **"
echo "*******************"

IMAGE="jenkins-course-final-project-maven"

echo "*** Login into dockerhub ***"
docker login -u victorgrubio --password-stdin
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG victorgrubio/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push victorgrubio/$IMAGE:$BUILD_TAG