#! /bin/bash

docker run --name wanrouter --hostname=wanrouter \
-v /etc/localtime:/etc/localtime:ro \
-v /srv/portico220:/home \
-p 23114:23114/udp \
-p 23114:23114/tcp \
-d projetoarcanjo/portico-srv:1.0 wanrouter --address wanrouter


