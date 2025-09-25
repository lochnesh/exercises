FROM lochnesh/exercises-docker:latest
MAINTAINER Skyler Nesheim

RUN set -eux; \
    apk add --no-cache \
        python3 \
        build-base \
        curl \
        git \
        libffi-dev \
        openssl-dev \
        readline-dev \
        yaml-dev \
        zlib-dev \
        ruby \
        ruby-dev; \
    gem update --system --no-document; \
    gem install --no-document bundler:2.6.7

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
