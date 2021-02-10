FROM node:10-alpine as builder

ENV COMMIT_SHA 1efe58f412445cd0f94624455f750dcda9cd4bff

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Blockstream/esplora.git && \
  cd esplora && \
  git checkout ${COMMIT_SHA} && \ 
  npm install --unsafe-perm

WORKDIR /esplora

ENV CORS_ALLOW=*

EXPOSE 5000

CMD [ "npm", "run", "dev-server" ]