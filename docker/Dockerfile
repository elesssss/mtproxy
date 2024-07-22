FROM debian:12

RUN apt update -y && \
    apt install -y openssl python3 python3-cryptography && \
    apt autoremove -y && apt clean all && rm -rf /var/lib/apt/lists/*

WORKDIR /home/mtproxy/
COPY docker/mtproxy.py docker/config.py ./
COPY docker/docker-entrypoint /usr/bin
RUN chmod +x /usr/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]
