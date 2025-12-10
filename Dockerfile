
FROM n8nio/n8n:latest

# Debian-based image → koristimo apt umjesto apk
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678
CMD ["n8n", "start"]
