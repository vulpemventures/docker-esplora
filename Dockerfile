FROM node:10-alpine as builder

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Blockstream/esplora.git && \
  cd esplora && \
  npm install --unsafe-perm

ARG API_URL

WORKDIR /esplora

ENV CORS_ALLOW=*
ENV API_URL={API_URL}

EXPOSE 5000

CMD [ "npm", "run", "dev-server" ]