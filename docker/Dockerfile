FROM alpine:3.10

RUN apk update \
    && apk add --no-cache openssl python3 py3-cryptography \
    && apk del --purge --no-cache \
    && rm -rf /var/cache/apk/* /tmp/* /lib/apk/db/*

WORKDIR /home/mtproxy/
COPY docker/mtproxy.py docker/config.py ./
COPY docker/docker-entrypoint /usr/bin
RUN chmod +x /usr/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]
