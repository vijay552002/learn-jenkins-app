#FROM mcr.microsoft.com/playwright:v1.57.0-noble
FROM node:20-alpine
RUN apk update \
    && apk add --no-cache ca-certificates \
    && update-ca-certificates
RUN npm install -g netlify-cli@20.1.1 node-jq serve