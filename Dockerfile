FROM node:16-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV DB_HOST=
ENV DB_PORT=
ENV DB_USER=
ENV DB_PASS=
ENV DB_NAME=

EXPOSE 3001

CMD [ "node", "index.js" ]