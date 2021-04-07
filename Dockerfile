FROM node:14-alpine as base

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . .
RUN npm install && \
  npm cache clean && \
  npm run build && \
  npm unbuild node_modules/*

CMD [ "npm", "start" ]

EXPOSE 3000
