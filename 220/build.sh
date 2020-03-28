#! /bin/sh

docker ps -a | awk '{ print $1,$2 }' | grep projetoarcanjo/portico:2.2.0 | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi projetoarcanjo/portico:2.2.0
docker build --tag=projetoarcanjo/portico:2.2.0 --rm=true .

