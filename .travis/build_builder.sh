#!/bin/bash

cd $(dirname $0)

IMAGE=fopina/misc:keeweb_builder

docker build -t $IMAGE -f Dockerfile.builder .
docker push $IMAGE
