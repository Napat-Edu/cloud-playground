FROM node:18-alpine

WORKDIR /app

ENV PORT 8081

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD npm start:prod