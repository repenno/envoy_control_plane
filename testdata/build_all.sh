#!/usr/bin/env bash

# docker build -t envoy_control_plane:v1.9.0 -f ./Dockerfile-frontenvoy .
# docker network create -d bridge --subnet 192.168.0.0/24 --gateway 192.168.0.1 envoy-net
# docker run -d --name envoy --network envoy-net --volume=$(pwd)/bootstrap-ads.yaml:/etc/bootstrap-ads.yaml -p 19000:19000 -p 10000:10000 envoy_control_plane:v1
#docker run -d --name envoy_1_9_0 --volume=$(pwd)/bootstrap-ads.yaml:/etc/bootstrap-ads.yaml -p 19000:19000 -p 10000:10000 envoy_control_plane:v1.9.0
docker-compose -f docker-compose.yaml up --force-recreate --build envoy_control_plane
