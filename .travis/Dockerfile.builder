FROM node:lts-slim

RUN npm install -g grunt-cli

RUN apt-get update \
 && apt-get install -y git \
 && rm -rf /var/lib/apt/lists/*
