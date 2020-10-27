# Specify a base image
# Base image to include Node in OS
# docker build -t svangala/simpleweb .
FROM node:alpine

WORKDIR /usr/app

# COPY ./ ./
# Install some depenendencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]