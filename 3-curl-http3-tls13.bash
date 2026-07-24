#!/bin/bash

rm -f ./sslkeylogs/http3.log

# 専用のDockerコンテナからhttp3のリクエストを投げ、ついでに復号化用のsslkeyを取得する。
# 「host.docker.internal」は、コンテナから見た時のホストOSを指す。
docker run --rm -it \
  -e SSLKEYLOGFILE=/keys/sslkeylogs/http3.log \
  -v $(pwd):/keys \
  alpine/curl-http3 \
  curl --http3-only -v -k https://host.docker.internal:4443/