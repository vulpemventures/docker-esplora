FROM node:16-alpine

ENV COMMIT_SHA=856fd384ce81f48641e72d4f76d553ff4c05defe

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Blockstream/esplora.git && \
  cd esplora && \
  git checkout ${COMMIT_SHA} && \ 
  npm install --unsafe-perm

WORKDIR /esplora

ENV CORS_ALLOW=*

EXPOSE 5000

CMD [ "npm", "run", "dev-server" ]
