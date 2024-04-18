FROM ubuntu:latest  # Base image (adjust for your needs)

RUN apt-get update && apt-get install -y ffmpeg  # Install FFmpeg

# Optional: Install additional libraries for FFmpeg
# RUN apt-get install -y libavcodec-extra  # Example: Extra codecs

WORKDIR /app  # Set working directory inside container
