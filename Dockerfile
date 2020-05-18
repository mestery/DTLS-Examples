FROM alpine

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN apk update && \
  apk add --no-cache bash gcc make binutils openssl openssl-dev musl-dev && \
  rm -rf /var/cache/apk/*

COPY . /dtls

RUN cd /dtls && make udp
