FROM node:9

WORKDIR /app

COPY . /app

RUN npm install -g pm2
RUN yarn install --production

EXPOSE 3023

CMD ["pm2 start server.js"]
