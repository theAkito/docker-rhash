FROM akito13/alpine AS build

ARG TAG="v1.3.9"
ARG BRANCH="master"

RUN apk add --update \
    alpine-sdk \
    libressl-dev

WORKDIR /root/rhash

RUN git clone https://github.com/rhash/RHash.git /root/rhash && \
    git fetch --all --tags --prune && \
    #git checkout tags/${TAG} && \
    git checkout ${BRANCH} && \
    ./configure --enable-openssl --enable-static --disable-openssl-runtime && \
    make

FROM alpine:edge

LABEL maintainer="Akito <the@akito.ooo>"
LABEL version="0.1.0"

COPY --from=build /root/rhash/rhash /rhash
ENTRYPOINT [ "/rhash" ]