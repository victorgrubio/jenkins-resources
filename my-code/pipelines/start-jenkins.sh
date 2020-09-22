#!/bin/bash
chown jenkins:jenkins /var/run/docker.sock 
/sbin/tini -- /usr/local/bin/jenkins.sh