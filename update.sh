#!/bin/sh
docker-compose down
docker-compose pull
docker-compose up -d db
docker-compose up -d

# docker rmi $(docker images --filter "dangling=true" -q --no-trunc) 
docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi


