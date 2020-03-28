#! /bin/sh

docker run --name portico-wanrouter --hostname=portico-wanrouter \
-v /etc/localtime:/etc/localtime:ro \
-v /srv/portico220:/home \
-p 52295:52295 \
-p 20913:20913 \
-d projetoarcanjo/portico:2.2.0 /opt/portico-2.2.0/bin/wanrouter.sh


