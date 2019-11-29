FROM mhart/alpine-node:latest

ENV API_URL https://blockstream.info/api
ENV PORT 5000

RUN apk update && apk add --no-cache \
  git \
  nginx \
  build-base \
  g++ \
  cairo-dev \
  jpeg-dev \
  pango-dev \
  bash \
  imagemagick

RUN git clone https://github.com/Blockstream/esplora.git \
  && cd esplora \
  && npm install --unsafe-perm 

COPY docker-entrypoint.sh /opt

RUN chmod +x /opt/docker-entrypoint.sh

EXPOSE 5000

ENTRYPOINT [ "/opt/docker-entrypoint.sh" ]