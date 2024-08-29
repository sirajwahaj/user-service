FROM node:slim

LABEL maintainer="siraj.wahaj@outlook.com"

WORKDIR /var/www/user-service
COPY package*.json ./
COPY . .

# Install dependencies
RUN  npm install
RUN  npm run build

EXPOSE 4000

ENTRYPOINT  ["npm", "start"]