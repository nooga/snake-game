FROM node:14
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install --legacy-peer-deps --no-optional && npm cache clean --force
COPY . .
EXPOSE 3001
CMD [ "node", "index.js" ]