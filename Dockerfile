FROM node:7
MAINTAINER Roger Russel <roger@rrussel.org>
ENV TERM=xterm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
  git \
  zip \
  unzip \
  build-essential \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g vue-cli
