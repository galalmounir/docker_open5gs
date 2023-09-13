#!/bin/bash

cd base
docker build -t galalhassan/docker_open5gs .

cd ../ims_base
docker build -t galalhassan/docker_kamailio .

cd ../srslte
docker build -t galalhassan/docker_srslte .

cd ../srsran
docker build -t galalhassan/docker_srsran .

cd ../ueransim
docker build -t galalhassan/docker_ueransim .

cd ../dns
docker build -t galalhassan/docker_dns .

cd ../rtpengine
docker build -t galalhassan/docker_rtpengine .

cd ../mysql
docker build -t galalhassan/docker_mysql .

cd ../pyhss
docker build -t galalhassan/docker_pyhss .

cd ../osmomsc
docker build -t galalhassan/docker_osmomsc .

cd ../osmohlr
docker build -t galalhassan/docker_osmohlr .

cd ../metrics
docker build -t galalhassan/docker_metrics .
