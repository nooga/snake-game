FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
CMD [ "node", "index.js" ]
ENV DB_HOST=localhost
ENV DB_PORT=27017
ENV DB_NAME=snakegame
ENV DB_USER=username
ENV DB_PASS=password