FROM keymetrics/pm2:8-alpine

WORKDIR /app

COPY . /app

RUN apk --update add git

ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production
RUN npm run build

# https://github.com/vmarchaud/pm2-githook
RUN pm2 install vmarchaud/pm2-githook
RUN pm2 set pm2-githook:port 3025
RUN ./.githook.sh

EXPOSE 3024
EXPOSE 3025

CMD ["pm2-runtime", "start", "pm2.json"]
