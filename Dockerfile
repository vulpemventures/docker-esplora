FROM mhart/alpine-node:10 AS build

ARG apiUrl

RUN apk add --no-cache git \
  build-base \
  g++ \
  cairo-dev \
  jpeg-dev \
  pango-dev \
  bash \
  imagemagick
RUN git clone https://github.com/Blockstream/esplora.git 

WORKDIR /esplora

ENV API_URL=${apiUrl}
ENV CORS_ALLOW=*

RUN npm install && \
  npm run postinstall && \
  npm run dist

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=build /esplora/dist ./
COPY esplora.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 5000

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]