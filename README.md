Dockerコンテナ上にNginxを立ち上げ、Nginxに対して様々なHTTPバージョンでリクエストを投げる。

それをWiresharkから閲覧して、HTTPのバージョンごとの通信の違いを確かめる実験をする。

# 前提

* macOS
* DockerDesktopがインストール済み

# セットアップ
数字から始まるbashファイルを、1から順に実行する。

# WiresharkからHTTP3のレスポンスデータの見方

HTTP3はデフォルトで暗号化されており、Wiresharkで中身を見ることができない。見るための方法は以下の通り。

* 「3-xxx.bash」を実行する前に、「monitoring-with-wireshark.bash」を実行しておく。
* 「3-xxx.bash」を実行すると、カレントディレクトリに「sslkey-http??.log」が生成される。
* Wiresharkの「Preferences」「Protocols」「TLS」の「(Pre)-Master-Secret log filename」で「sslkey.log」を指定する。
* すると、Wireshark上に、復号化したデータが表示される（Info列に「GET,https,...」などの文字列が表示される）

# 備忘録

volumesフォルダ配下に、公開鍵と秘密鍵を保管しているが、生成時のコマンドは以下の通り。

```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout cert.key \
-out cert.crt \
-subj "/C=JP/ST=Tokyo/L=Chiyoda/O=Development/CN=localhost"
```