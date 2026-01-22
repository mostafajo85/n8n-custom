FROM node:20-bookworm-slim

# تثبيت ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg ca-certificates curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# تثبيت n8n
RUN npm install -g n8n

# مستخدم n8n
RUN useradd -m n8n
USER n8n
WORKDIR /home/n8n

EXPOSE 5678

CMD ["n8n"]
