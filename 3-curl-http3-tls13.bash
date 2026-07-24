#!/bin/bash

# オプション付きcurlで通信時に、SSLKEYLOGを取得してファイル出力する。
# curlくらい、ホストOSで実行すれば良いと思うかもしれないが、http3をサポートしたcurlがまだ普及していないため、専用のDockerコンテナで実施している。
# 参考　https://ik.am/entries/792

docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkey-http3.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http3-only -v -k https://host.docker.internal:4443/