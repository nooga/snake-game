# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source by copying the rest of the code
COPY . .

# Define the environment variables to connect to MongoDB
ENV DB_HOST=your_db_host
ENV DB_PORT=your_db_port
ENV DB_NAME=your_db_name
ENV DB_USER=your_db_user
ENV DB_PASS=your_db_pass

# Expose the app on port 3001
EXPOSE 3001

# Define the command to run the app
CMD [ "node", "index.js" ]