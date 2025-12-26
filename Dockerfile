#FROM mcr.microsoft.com/playwright:v1.57.0-noble
FROM node:20-alpine
RUN apt-get update \
    && apt-get install -y ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/
RUN npm install -g netlify-cli@20.1.1 node-jq serve