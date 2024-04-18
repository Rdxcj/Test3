# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata
RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get -y update
ADD main.py .
