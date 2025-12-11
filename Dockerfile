FROM n8nio/n8n:latest

USER root

# Instaliramo ffmpeg u tri odvojena koraka da Render ne poludi
RUN apt-get update
RUN apt-get install -y ffmpeg
RUN rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678

CMD ["n8n", "start"]
