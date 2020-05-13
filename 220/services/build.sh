#! /bin/sh

docker ps -a | awk '{ print $1,$2 }' | grep projetoarcanjo/portico-srv:1.0 | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi projetoarcanjo/portico-srv:1.0
docker build --tag=projetoarcanjo/portico-srv:1.0 --rm=true .

