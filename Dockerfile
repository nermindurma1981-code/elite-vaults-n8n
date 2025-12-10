FROM n8nio/n8n:latest
RUN apk --no-cache add ffmpeg
EXPOSE 5678
CMD ["n8n", "start"]
