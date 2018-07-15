FROM node:8.11-alpine
LABEL maintainer="Abdullah Morgan paapaabdullahm@gmail.com"

RUN npm -g install browser-sync

WORKDIR /src
EXPOSE 3000 3001 8000
