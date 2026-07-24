#!/bin/bash

rm -f ./sslkeylogs/http11.log

# 専用のDockerコンテナからhttp1.1のリクエストを投げ、ついでに復号化用のsslkeyを取得する。
# 「host.docker.internal」は、コンテナから見た時のホストOSを指す。
docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkeylogs/http11.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http1.1 -v -k https://host.docker.internal:4443/