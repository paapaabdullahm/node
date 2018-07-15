FROM node:8.11-alpine
LABEL maintainer="Abdullah Morgan paapaabdullahm@gmail.com"

RUN yarn add browser-sync

WORKDIR /src
