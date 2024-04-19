# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        sudo \
        curl \
        git \
        jq \
        unzip \
        zip \
        ffmpeg \
        python3 \
        python3-pip \
        libyaml-dev \
        tini \
        iptables
RUN pip3 install requests
ADD main.py .
