FROM projetoarcanjo/portico:2.2.0
MAINTAINER magno.mabreu@gmail.com

EXPOSE 23114/tcp
EXPOSE 23114/udp
COPY ./entrypoint.sh /opt/portico-2.2.0/entrypoint.sh
RUN chmod 0777 /opt/portico-2.2.0/entrypoint.sh
WORKDIR /opt/portico-2.2.0/lib
ENTRYPOINT ["/opt/portico-2.2.0/entrypoint.sh"]






