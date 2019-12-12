FROM alpine

LABEL maintainer="Stuart Auld <stuart@aceteknologi.com>"

RUN apk add --no-cache curl jq

COPY bojonotomofo.sh /opt/bojonotomofo.sh

ENTRYPOINT ["/opt/bojonotomofo.sh"]
