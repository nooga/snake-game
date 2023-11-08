
# Use NodeJS base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy other source code files
COPY . .

# Expose port for the application
EXPOSE 3001

# Set environment variables for DB connection
ENV DB_HOST=localhost
ENV DB_PORT=27017
ENV DB_NAME=snakegame_database
ENV DB_USER=username
ENV DB_PASS=password

# Run application
CMD [ "node", "index.js" ]
