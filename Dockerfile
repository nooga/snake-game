FROM node:16
WORKDIR /app
COPY . /app
RUN npm install
ENV DB_HOST=db
ENV DB_PORT=27017
ENV DB_NAME=snake_game
CMD ["node", "index.js"]