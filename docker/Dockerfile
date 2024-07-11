FROM debian:11

RUN apt update -y && \
    apt install -y openssl python3 python3-cryptography && \
    apt autoremove -y && apt clean all && rm -rf /var/lib/apt/lists/*

RUN useradd mtproxy -u 10000

WORKDIR /home/mtproxy/

COPY --chown=MTProxy:MTProxy mtproxy.py config.py entrypoint.sh ./

RUN chmod +x entrypoint.sh

USER MTProxy

ENTRYPOINT ["./entrypoint.sh"]
