FROM node:10-alpine as builder

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Blockstream/esplora.git && \
  cd esplora && \
  npm install --unsafe-perm

WORKDIR /esplora

ENV CORS_ALLOW=*

EXPOSE 5000

CMD [ "npm", "run", "dev-server" ]