#!/bin/bash

echo "Stopping and removing containers..."
docker rm -f c1 c2 R1

echo "Removing networks..."
docker network rm sw1 sw2

echo "Cleanup completed."

