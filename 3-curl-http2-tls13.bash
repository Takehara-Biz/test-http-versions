#!/bin/bash

rm -f ./sslkeylogs/http2.log

# 専用のDockerコンテナからhttp2のリクエストを投げ、ついでに復号化用のsslkeyを取得する。
# 「host.docker.internal」は、コンテナから見た時のホストOSを指す。
docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkeylogs/http2.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http2 -v -k https://host.docker.internal:4443/