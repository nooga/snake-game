FROM node:16-alpine

# set working directory
WORKDIR /app

# Copy package.json and package-lock.json first, for utilising Docker cache to save re-building time
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose the listening port
EXPOSE 3001

# run command
CMD [ "node", "index.js" ]