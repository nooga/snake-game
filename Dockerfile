# Build stage
FROM node:14-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Production stage
FROM node:14-alpine as production
ENV NODE_ENV=production
WORKDIR /app
COPY --from=builder /app ./

# Environment variables
ENV DB_HOST=replace_with_actual_host
ENV DB_PORT=replace_with_actual_port
ENV DB_NAME=replace_with_actual_database_name
ENV DB_USER=replace_with_actual_username
ENV DB_PASS=replace_with_actual_password

EXPOSE 3001
CMD ["node", "index.js"]
