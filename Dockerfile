FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV DB_HOST=localhost 
ENV DB_PORT=27017 
ENV DB_NAME=snake_game 

EXPOSE 3001

CMD [ "node", "index.js" ]