FROM ubuntu:26.04

# digコマンドを使うためdnsutilsをインストール
# pingコマンドを使うためiputils-pingをインストール
RUN apt-get update && apt-get install -y dnsutils iputils-ping
RUN apt-get install -y nginx

COPY ./volumes/etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./volumes/etc/ssl /etc/ssl

EXPOSE 80 443
# コンテナを起動させ続ける。
CMD ["nginx", "-g", "daemon off;"]
