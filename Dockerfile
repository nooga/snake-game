FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
ENV DB_HOST=mongo
ENV DB_PORT=27017
ENV DB_NAME=snakegame
ENV DB_USER=user
ENV DB_PASS=pass
CMD [ "node", "index.js" ]