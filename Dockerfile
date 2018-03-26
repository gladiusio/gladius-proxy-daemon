FROM node:7.7.2-alpine

RUN apk add --no-cache mysql-client

WORKDIR /usr/app

COPY package.json .
RUN npm install --quiet

COPY . .
