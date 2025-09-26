FROM lochnesh/exercises-docker:latest

MAINTAINER Skyler Nesheim

ENV RUBY_VERSION=3.4.4

RUN set -eux; \
    apk add --no-cache \
        python3 \
        curl \
        git \
        ca-certificates \
        gdbm \
        libffi \
        libxml2 \
        libxslt \
        libyaml \
        ncurses \
        openssl \
        readline \
        zlib; \
    apk add --no-cache --virtual .ruby-builddeps \
        autoconf \
        bison \
        build-base \
        bzip2 \
        bzip2-dev \
        gdbm-dev \
        libffi-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        linux-headers \
        ncurses-dev \
        openssl-dev \
        readline-dev \
        zlib-dev; \
    curl -fsSLO "https://cache.ruby-lang.org/pub/ruby/${RUBY_VERSION%.*}/ruby-${RUBY_VERSION}.tar.gz"; \
    tar -xzf ruby-${RUBY_VERSION}.tar.gz; \
    cd ruby-${RUBY_VERSION}; \
    ./configure --disable-install-doc; \
    make -j "$(nproc)"; \
    make install; \
    cd /; \
    rm -rf ruby-${RUBY_VERSION} ruby-${RUBY_VERSION}.tar.gz; \
    gem update --system --no-document; \
    gem install --no-document bundler:2.6.7; \
    apk del .ruby-builddeps

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
