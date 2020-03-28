#! /bin/sh

docker run --name portico-crti --hostname=portico-crti  \
-v /etc/localtime:/etc/localtime:ro \
-p 52295:52295 \
-p 20913:20913 \
-d projetoarcanjo/portico:2.2.0 /opt/portico-2.2.0/bin/rtiexec.sh

docker network connect arcanjo portico-crti


