# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04

RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata && apt-get -y upgrade
ADD main.py .
