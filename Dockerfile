FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV DB_HOST=localhost
ENV DB_PORT=27017
ENV DB_NAME=snakegame
ENV PORT=3001

EXPOSE 3001

CMD [ "node", "index.js" ]