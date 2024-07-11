这可能是目前最方便的MTProxy脚本了！

## MTProxy 一键脚本
```
bash <(curl -sSL https://raw.githubusercontent.com/elesssss/mtproxy/main/mtproxy.sh)
```

## docker 启动
```
docker run -tid \
  --name mtproxy \
  --restart=always \
  --privileged=true \
  -p 8443:8443 \
  ghcr.io/elesssss/mtproxy:latest
```
