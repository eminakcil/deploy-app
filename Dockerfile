FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
RUN npm ci --only=production
COPY . /usr/src/app
EXPOSE 8080
CMD [ "node", "server.js" ]
