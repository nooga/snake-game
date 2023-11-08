FROM node:14-buster

# Set the working directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install any needed packages. If the packages are not installed and the application
# is run right after starting the container, it will not find the necessary dependencies
RUN npm install

# Bundle app source
COPY . .

# Set the environment variables for the database connection
# ENV DB_HOST=dbhostname
# ENV DB_PORT=dbport
# ENV DB_NAME=dbname
# ENV DB_USER=dbusername
# ENV DB_PASS=dbpassword

# Make port 3001 available to the world outside this container
EXPOSE 3001

CMD ["node", "index.js"]