#!/bin/bash

# Dockerコンテナを起動して、tcpdumpを実行し、http通信の状況をwiresharkに表示するスクリプト
# thv-containerが起動した後に、別ターミナルから実行すること。

# コマンドの詳細は以下に記載
# https://takehara-biz.hatenablog.com/entry/2026/07/17/105458
docker run --rm --net container:thv-container nicolaka/netshoot tcpdump -i any -U -w - | wireshark -k -i -