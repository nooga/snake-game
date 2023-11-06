FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV DB_HOST=mongodb
ENV DB_PORT=27017
ENV DB_NAME=snake_game_db

EXPOSE 3001

CMD [ "node", "index.js" ]