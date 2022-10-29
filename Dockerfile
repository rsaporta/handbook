FROM node:latest@sha256:9006c62d58649d5db18bbe00c2c73a2cfaf56d63fa56200b141203736123f9a4

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
