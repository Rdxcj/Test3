# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04
RUN apt-get -y update
RUN apt-get -y install sudo ffmpeg python3 jq
RUN sudo apt install curl python3-pip -y
RUN pip3 install requests
