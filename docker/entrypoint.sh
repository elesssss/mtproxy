#!/bin/sh

if [ -z "$SECURE" ] && [ -z "$DOMAIN" ] && [ -z "$TAG" ]; then
    sed -i 's/^#\?.*user".*/    "user": "'"a5ecde1baf7dea38916f1b2e53f2271a"'",/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*secure.*/    "secure": True,/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*tls.*/    "tls": False/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*AD_TAG.*/# AD_TAG = ""/g' /home/MTProxy/config.py
elif [ -z "$SECURE" ] && [ -n "$DOMAIN" ] && [ -z "$TAG" ]; then
    sed -i 's/^#\?.*user".*/    "user": "'"a5ecde1baf7dea38916f1b2e53f2271a"'",/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*secure.*/    "secure": False,/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*tls.*/    "tls": True/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*TLS_DOMAIN.*/TLS_DOMAIN = "'"$DOMAIN"'"/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*AD_TAG.*/# AD_TAG = ""/g' /home/MTProxy/config.py
elif [ -z "$SECURE" ] && [ -n "$DOMAIN" ] && [ -n "$TAG" ]; then
    sed -i 's/^#\?.*user".*/    "user": "'"a5ecde1baf7dea38916f1b2e53f2271a"'",/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*secure.*/    "secure": False,/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*tls.*/    "tls": True/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*TLS_DOMAIN.*/TLS_DOMAIN = "'"$DOMAIN"'"/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*AD_TAG.*/AD_TAG = "'"$TAG"'"/g' /home/MTProxy/config.py
elif [ -n "$SECURE" ] && [ -z "$DOMAIN" ] && [ -n "$TAG" ]; then
    sed -i 's/^#\?.*user".*/    "user": "'"$SECURE"'",/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*secure.*/    "secure": True,/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*tls.*/    "tls": False/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*AD_TAG.*/AD_TAG = "'"$TAG"'"/g' /home/MTProxy/config.py
elif [ -n "$SECURE" ] && [ -z "$DOMAIN" ] && [ -z "$TAG" ]; then
    sed -i 's/^#\?.*user".*/    "user": "'"$SECURE"'",/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*secure.*/    "secure": True,/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*tls.*/    "tls": False/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*AD_TAG.*/# AD_TAG = ""/g' /home/MTProxy/config.py
elif [ -n "$SECURE" ] && [ -n "$DOMAIN" ] && [ -n "$TAG" ]; then
    sed -i 's/^#\?.*user".*/    "user": "'"$SECURE"'",/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*secure.*/    "secure": False,/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*tls.*/    "tls": True/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*TLS_DOMAIN.*/TLS_DOMAIN = "'"$DOMAIN"'"/g' /home/MTProxy/config.py
    sed -i 's/^#\?.*AD_TAG.*/AD_TAG = "'"$TAG"'"/g' /home/MTProxy/config.py
fi

exec python3 /home/MTProxy/mtproxy.py
