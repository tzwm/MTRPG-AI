FROM node:19-slim

LABEL maintainer="tzwm"
LABEL org.opencontainers.image.title=MTRPG-AI
LABEL org.opencontainers.image.url=https://github.com/tzwm/MTRPG-AI
LABEL org.opencontainers.image.source=https://github.com/tzwm/MTRPG-AI

RUN apt-get update && apt-get install -y curl

RUN curl -s -o /tmp/mtrpg-ai.tar.gz -L https://github.com/tzwm/MTRPG-AI/archive/main.tar.gz
RUN mkdir /app && tar xf \
    tmp/mtrpg-ai.tar.gz -C /app/ --strip-components=1

WORKDIR /app/
RUN npm install
