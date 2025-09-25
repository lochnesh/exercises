FROM lochnesh/exercises-docker:latest
MAINTAINER Skyler Nesheim

ARG RUBY_VERSION=3.3.9

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
        zlib-dev; \
    mkdir -p /tmp/ruby-build; \
    cd /tmp/ruby-build; \
    curl -fSL "https://cache.ruby-lang.org/pub/ruby/${RUBY_VERSION%.*}/ruby-${RUBY_VERSION}.tar.gz" -o ruby.tar.gz; \
    tar -xzf ruby.tar.gz; \
    cd ruby-${RUBY_VERSION}; \
    ./configure --disable-install-doc; \
    make -j "$(nproc)"; \
    make install; \
    cd /; \
    rm -rf /tmp/ruby-build; \
    gem update --system --no-document; \
    gem install --no-document bundler:2.6.7

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
