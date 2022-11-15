FROM node:16

WORKDIR /app

COPY app/package-lock.json ./package.json

RUN npm install

COPY app/server.js ./

EXPOSE 8080

CMD [ "node", "server.js" ]
