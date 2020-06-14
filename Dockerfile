FROM node:latest

LABEL maintainer="ag47"

ENV NODE_ENV production

RUN apt-get update -y
RUN apt-get upgrade -y

WORKDIR /src/app

ADD package.json package-lock.json ./

RUN npm install

ADD . .

RUN npm run build 

EXPOSE 8080

ENTRYPOINT [ "npm", "start" ]