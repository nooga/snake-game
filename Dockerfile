FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 3001

# Run the app
CMD ["node", "index.js"]
