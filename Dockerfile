FROM lochnesh/exercises-docker:latest

MAINTAINER Skyler Nesheim

RUN apt-get update \
 && apt-get install -y --no-install-recommends python3 \
 && rm -rf /var/lib/apt/lists/*

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
