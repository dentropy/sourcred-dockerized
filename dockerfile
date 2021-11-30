FROM ubuntu:20.04
RUN apt-get update
COPY . /template-instance
WORKDIR /template-instance
RUN apt-get install -y make
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN apt-get install -y curl
RUN apt-get install -y gnupg
RUN apt-get install -y git
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash
RUN apt-get -y install nodejs
RUN npm install -g yarn
RUN cd /template-instance && yarn
EXPOSE 6006
CMD ["yarn start"]


# FROM node:17-alpine3.12
# RUN ls
# RUN npm install