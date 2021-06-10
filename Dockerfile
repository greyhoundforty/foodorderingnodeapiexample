FROM node:12-alpine3.12

RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY app.js /app
RUN npm install

ENV PORT 8080

EXPOSE 8080

CMD ["npm", "start"]
