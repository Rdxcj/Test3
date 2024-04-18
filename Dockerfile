# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04
RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get update && apt-get install -y git
ADD main.py .
