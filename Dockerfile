FROM node:14
WORKDIR /app
COPY . /app
RUN npm install
ENV DB_HOST=mongo
ENV DB_PORT=5432
ENV DB_NAME=test
ENV DB_USER=test
ENV DB_PASS=test
EXPOSE 3001
CMD ["node", "index.js"]