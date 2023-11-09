FROM node:18-alpine

WORKDIR /app

ENV PORT 3000

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD npm start:prod