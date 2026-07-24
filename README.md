Dockerコンテナ上にNginxを立ち上げ、ホストOS側から、curlコマンドで、様々なHTTPバージョンでリクエストを投げます。

それをWiresharkから閲覧して、HTTPのバージョンごとの通信の違いを確かめる実験をするリポジトリです。

# 前提

* macOS
* DockerDesktopがインストール済み

# セットアップ
数字から始まるbashファイルを、1から順に実行する。

# 備忘録

volumesフォルダ配下に、公開鍵と秘密鍵を保管しているが、生成時のコマンドは以下の通り。

```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout cert.key \
-out cert.crt \
-subj "/C=JP/ST=Tokyo/L=Chiyoda/O=Development/CN=localhost"
```