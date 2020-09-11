FROM jenkins/jenkins:2.256

USER root

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade

USER jenkins