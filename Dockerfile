FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
ENV DB_HOST=mongodb-host
ENV DB_PORT=27017
ENV DB_NAME=snakegame
ENV DB_USER=
ENV DB_PASS=
CMD [ "node", "index.js" ]