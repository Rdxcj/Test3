# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04

RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata apt-utils && apt-get -y install sudo ffmpeg python3 wget python3-pip && sudo apt-get -y remove docker -y && sudo apt-get -y install docker && wget -qO- https://get.docker.com/ | sh && pip3 install requests && useradd -m docker
RUN sudo apt install init-system-helpers
ADD main.py .
