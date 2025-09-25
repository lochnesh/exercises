FROM lochnesh/exercises-docker:latest

MAINTAINER Skyler Nesheim

RUN set -eux; \
 if command -v apt-get >/dev/null 2>&1; then \
   apt-get update; \
   apt-get install -y --no-install-recommends python3; \
   rm -rf /var/lib/apt/lists/*; \
 elif command -v apk >/dev/null 2>&1; then \
   apk add --no-cache python3; \
 elif command -v yum >/dev/null 2>&1; then \
   yum install -y python3; \
   yum clean all; \
 else \
   echo "Unsupported package manager; cannot install python3" >&2; \
   exit 1; \
 fi

COPY ./ /usr/src/exercises
WORKDIR /usr/src/exercises
RUN ./verify.sh
