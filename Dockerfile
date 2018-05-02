FROM keymetrics/pm2:8-alpine

WORKDIR /app

COPY . /app

ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

EXPOSE 3024

CMD ["pm2-runtime", "start", "pm2.json"]
