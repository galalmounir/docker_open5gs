#!/bin/bash

docker buildx create --use

cd base
docker buildx build -t galalhassan/docker_open5gs --platform linux/amd64,linux/arm64 --push .

cd ../ims_base
docker buildx build -t galalhassan/docker_kamailio --platform linux/amd64,linux/arm64 --push .

cd ../srslte
docker buildx build -t galalhassan/docker_srslte --platform linux/amd64,linux/arm64 --push .

cd ../srsran
docker buildx build -t galalhassan/docker_srsran --platform linux/amd64,linux/arm64 --push .

cd ../ueransim
docker buildx build -t galalhassan/docker_ueransim --platform linux/amd64,linux/arm64 --push .

cd ../dns
docker buildx build -t galalhassan/docker_dns --platform linux/amd64,linux/arm64 --push .

cd ../rtpengine
docker buildx build -t galalhassan/docker_rtpengine --platform linux/amd64,linux/arm64 --push .

cd ../mysql
docker buildx build -t galalhassan/docker_mysql --platform linux/amd64,linux/arm64 --push .

cd ../pyhss
docker buildx build -t galalhassan/docker_pyhss --platform linux/amd64,linux/arm64 --push .

cd ../osmomsc
docker buildx build -t galalhassan/docker_osmomsc --platform linux/amd64,linux/arm64 --push .

cd ../osmohlr
docker buildx build -t galalhassan/docker_osmohlr --platform linux/amd64,linux/arm64 --push .

cd ../metrics
docker buildx build -t galalhassan/docker_metrics --platform linux/amd64,linux/arm64 --push .
