FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
ENV DB_HOST=localhost DB_PORT=27017 DB_NAME=snakegame
CMD [ "node", "index.js" ]