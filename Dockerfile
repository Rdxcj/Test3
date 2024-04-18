# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04
RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get -y update && apt-get -y install sudo ffmpeg python3 jq curl python3-pip
ADD main.py .
