# Stage 1: Builder
FROM ubuntu:latest AS builder

RUN apt-get update && apt-get install -y ffmpeg  # Install FFmpeg and dependencies

# Stage 2: Runner (copies binaries from builder)
FROM ubuntu:latest

COPY --from=builder /usr/bin/ffmpeg /usr/bin/ffmpeg  # Copy FFmpeg binary
WORKDIR /app  # Set working directory

# Rest of your workflow steps using ffmpeg
