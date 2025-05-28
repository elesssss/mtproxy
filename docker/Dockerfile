FROM alpine:3.10

RUN apk update \
    && apk add --no-cache openssl python3 py3-cryptography \
    && apk del --purge --no-cache \
    && mkdir -p /etc/mtproxy \
    && rm -rf /var/cache/apk/* /tmp/* /lib/apk/db/*

WORKDIR /usr/local/mtproxy/
COPY docker/mtproxy.py ./
COPY docker/config.yaml /etc/mtproxy
COPY docker/docker-entrypoint /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]
