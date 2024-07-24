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
  ghcr.io/elesssss/mtproxy
```
# 支持加入以下变量启动：

- SECURE 在vps使用以下命令生成
```
openssl rand -hex 16
```
- DOMAIN 找一个没有被墙的网站的域名
- TAG 从机器人 https://t.me/MTProxybot 获取

# 变量启动示例：
```
docker run -tid \
  --name mtproxy \
  --restart=always \
  --privileged=true \
  -p 8443:8443 \
  -e SECURE=123c578bd4da8744a68fb56000b35854  \
  -e DOMAIN=itunes.apple.com  \
  -e TAG=49a8b0578f87744eed2986c425445661  \
  ghcr.io/elesssss/mtproxy
```
