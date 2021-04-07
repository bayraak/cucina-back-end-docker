FROM node:14-alpine as base

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . .
RUN npm install

CMD [ "npm", "start" ]

EXPOSE 3000
