#! /bin/bash

docker run --name portico-wanrouter --hostname=portico-wanrouter \
-v /etc/localtime:/etc/localtime:ro \
-v /srv/portico220:/home \
-p 23114:23114 \
-d projetoarcanjo/portico:2.2.0 /opt/portico-2.2.0/bin/wanrouter.sh --address portico-wanrouter


