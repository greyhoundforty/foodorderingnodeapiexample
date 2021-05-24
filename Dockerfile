FROM node:12-alpine3.12

RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY app.js /app
RUN npm install

ENV PORT 3200

EXPOSE 3200

CMD ["npm", "start"]
