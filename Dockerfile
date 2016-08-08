FROM elixir:1.3.2

MAINTAINER Skyler Nesheim

RUN mkdir -p /usr/src/exercises
WORKDIR /usr/src/exercises

COPY ./ /usr/src/exercises

RUN apt-get update
RUN apt-get install apt-transport-https
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get update
RUN apt-get install -y sbt
RUN apt-get install -y ruby-full
RUN gem install bundler

RUN ./verify.sh
