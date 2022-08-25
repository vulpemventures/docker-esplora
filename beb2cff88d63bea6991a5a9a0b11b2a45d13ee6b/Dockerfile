FROM node:16-alpine

ENV COMMIT_SHA=beb2cff88d63bea6991a5a9a0b11b2a45d13ee6b

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Blockstream/esplora.git && \
  cd esplora && \
  git checkout ${COMMIT_SHA} && \ 
  npm install --unsafe-perm

WORKDIR /esplora

ENV CORS_ALLOW=*

EXPOSE 5000

CMD [ "npm", "run", "dev-server" ]
