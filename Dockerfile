FROM node:16

# directory that contains the application code
WORKDIR /usr/src/app

COPY package*.json ./

# for prod: npm ci --only=production
RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]

