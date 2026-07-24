Dockerコンテナ上にNginxを立ち上げ、ホストOS側から、curlコマンドで、様々なHTTPバージョンでリクエストを投げます。

それをWiresharkから閲覧して、HTTPのバージョンごとの通信の違いを確かめる実験をするリポジトリです。

# 前提

* macOS
* DockerDesktopがインストール済み