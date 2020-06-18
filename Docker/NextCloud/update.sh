#!/bin/bash
#Script to update nextcloud LSIO Image and Nextcloud Version

cd ~/docker/nexcloud

echo "Pulling New LSIO images"
docker-compose pull

echo "Complete, updating containers"
docker-compose up -d

echo "Containers running, pruning old images"
docker image prune

wait 100
echo "Updating Nextcloud to newest version"

docker exec -it nextcloud updater.phar


exit
echo "Update Complete"
