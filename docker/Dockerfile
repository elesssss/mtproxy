FROM debian:11

RUN apt update -y \
    && apt install -y openssl python3 python3-cryptography \
    && apt autoremove -y \
    && apt clean all \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -u 10000 mtproxy

WORKDIR /home/mtproxy/

COPY --chown=mtproxy:mtproxy mtproxy.py config.py entrypoint.sh ./

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
