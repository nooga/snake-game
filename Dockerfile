FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENV DB_HOST=mongodb_host
ENV DB_PORT=mongodb_port
ENV DB_NAME=snake-game
EXPOSE 3001
CMD [ "node", "index.js" ]