## ✨Python版TG代理

>适配 /386/amd64/arm64/armv7/armv6/s390x 架构
>
>支持ipv4和ipv6
>
>默认开启混淆伪装和TLS加密
>
>支持TG频道推广（需要TG2021年及之前的老号）

## ✨一键脚本
```
bash <(curl -sSL https://raw.githubusercontent.com/elesssss/mtproxy/main/mtproxy.sh)
```

## ✨Docker变量部署：
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
### 变量获取方式如下：

🟢 SECURE 在vps使用以下命令生成
```
openssl rand -hex 16
```
🟢 DOMAIN 找一个没有被墙的网站的域名

🟢 TAG 从机器人 https://t.me/MTProxybot 获取

## ✨Docker自定义配置部署：

先下载配置文件到指定目录，示例为 /etc/mtproxy
```
wget -P /etc/mtproxy https://raw.githubusercontent.com/elesssss/mtproxy/main/config.yaml
```
修改配置文件中的各项参数，然后启动容器：
```
docker run -tid \
  --name mtproxy \
  --restart=always \
  --privileged=true \
  -p 8443:8443 \
  -v /etc/mtproxy:/etc/mtproxy  \
  ghcr.io/elesssss/mtproxy
```
## 查看代理链接
```
docker logs mtproxy
```
