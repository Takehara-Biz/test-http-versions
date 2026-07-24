#!/bin/bash

# 専用のDockerコンテナからhttp1.1のリクエストを投げ、ついでに復号化用のsslkeyを取得する。

docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkeylogs/http11.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http1.1 -v -k https://host.docker.internal:4443/