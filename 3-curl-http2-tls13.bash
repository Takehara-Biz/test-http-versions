#!/bin/bash

# 専用のDockerコンテナからhttp2のリクエストを投げ、ついでに復号化用のsslkeyを取得する。

docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkeylogs/http2.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http2 -v -k https://host.docker.internal:4443/