FROM elixir

MAINTAINER Skyler Nesheim

RUN mkdir -p /usr/src/exercises
WORKDIR /usr/src/exercises

COPY ./ /usr/src/exercises

RUN ./verify.sh
