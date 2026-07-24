#!/bin/bash

docker container run -d --name thv-container --rm -p 4443:443/udp -p 4443:443/tcp -p 8080:80 thv-image
