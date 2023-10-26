FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV DB_HOST=mongodb
ENV DB_PORT=27017

EXPOSE 3001

CMD [ "node", "index.js" ]