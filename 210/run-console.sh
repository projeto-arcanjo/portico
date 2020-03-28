#! /bin/sh

docker run --name portico --hostname=portico \
-v /etc/localtime:/etc/localtime:ro \
-v /srv/portico/:/home/ \
-it projetoarcanjo/portico:2.1.0 /bin/bash


