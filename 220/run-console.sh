#! /bin/sh

docker run --name portico --hostname=portico \
-v /etc/localtime:/etc/localtime:ro \
-it projetoarcanjo/portico:2.2.0 /bin/bash


