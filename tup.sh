#!/bin/bash


echo "Upgrading teleport"
rm -rf ./teleport-ent/

curl https://cdn.teleport.dev/teleport-ent-v$1-linux-amd64-bin.tar.gz | tar -xzf -

service teleport stop

mv ./teleport-ent/teleport $(which teleport)

service teleport start

rm -rf ./teleport-ent/
