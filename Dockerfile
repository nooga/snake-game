FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

ENV DB_HOST=mongodb
ENV DB_PORT=27017
ENV DB_NAME=snakedb

EXPOSE 3001

CMD [ "node", "index.js" ]