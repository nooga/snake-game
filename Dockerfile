# Use node image as base
FROM node:16

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install node modules
RUN npm install

# Copy app source code
COPY . .

# Set Environment Variables
ENV DB_HOST=mongodb
ENV DB_PORT=27017
ENV DB_NAME=snakedb
ENV DB_USER=user
ENV DB_PASS=pass

# Expose port 3001
EXPOSE 3001

# Run the app
CMD [ "node", "index.js" ]
