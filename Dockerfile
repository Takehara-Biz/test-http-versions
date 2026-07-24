FROM nginx:1.30.4

# Nginxの設定ファイルをコンテナに持たせる
COPY ./volumes/etc/nginx/nginx.conf /etc/nginx/nginx.conf
# TLS通信用の公開鍵と秘密鍵をコンテナに持たせる
COPY ./volumes/etc/ssl /etc/ssl

EXPOSE 80 443
