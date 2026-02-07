#!/bin/bash

echo "Creating networks..."
docker network create --subnet 10.1.1.0/24 --gateway 10.1.1.1 sw1
docker network create --subnet 10.1.2.0/24 --gateway 10.1.2.1 sw2

echo "Starting containers..."

docker run -d --name c1 --network sw1 --cap-add=NET_ADMIN alpine:3.23.3 sleep infinity
docker run -d --name c2 --network sw2 --cap-add=NET_ADMIN alpine:3.23.3 sleep infinity

docker run --name R1 -d --network sw1 --network sw2 --privileged --sysctl net.ipv4.ip_forward=1 alpine:3.23.3 sleep infinity

echo "Configuring static routes..."

docker exec c1 ip route add 10.1.2.0/24 via 10.1.1.3
docker exec c2 ip route add 10.1.1.0/24 via 10.1.2.3

echo "Lab is ready!"

