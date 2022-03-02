FROM node:16-alpine

ENV COMMIT_SHA=7d9a260a0a07824ca03cd02859a318344ff418e1

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Blockstream/esplora.git && \
  cd esplora && \
  git checkout ${COMMIT_SHA} && \ 
  npm install --unsafe-perm

WORKDIR /esplora

ENV CORS_ALLOW=*

EXPOSE 5000

CMD [ "npm", "run", "dev-server" ]
