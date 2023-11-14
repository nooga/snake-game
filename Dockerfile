FROM node:16-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# install project dependencies
RUN npm ci

# set environment variables
ENV DB_HOST=localhost
ENV DB_PORT=27017
ENV DB_NAME=snakegame
ENV DB_USER=root
ENV DB_PASS=root

# start app
CMD [ "node", "index.js" ]