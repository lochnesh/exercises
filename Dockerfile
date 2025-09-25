FROM lochnesh/exercises-docker:latest

MAINTAINER Skyler Nesheim

RUN set -eux; \
 apk add --no-cache python3

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
