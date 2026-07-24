#!/bin/bash

# 専用のDockerコンテナからhttp3のリクエストを投げ、ついでに復号化用のsslkeyを取得する。

docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkey-http3.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http3-only -v -k https://host.docker.internal:4443/