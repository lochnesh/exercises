FROM lochnesh/exercises-docker:latest

MAINTAINER Skyler Nesheim

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
