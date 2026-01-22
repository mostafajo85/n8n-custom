FROM n8nio/n8n:latest
USER root
RUN apt-get update && apt-get install -y ffmpeg fonts-freefont-ttf && rm -rf /var/lib/apt/lists/*
USER node
