FROM ubuntu:18.04
MAINTAINER magno.mabreu@gmail.com

ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV RTI_HOME=/opt/portico-2.2.0
ENV RTI_RID_FILE=/opt/portico-2.2.0/RTI.rid
ENV PATH="${RTI_HOME}/lib:${PATH}"

RUN apt update && \
apt install -y --no-install-recommends openjdk-8-jdk subversion gcc g++ && \
cd /home/ && \
svn co https://github.com/openlvc/portico/trunk/codebase portico
	
COPY ./local.properties /home/portico/

RUN cd /home/portico/ && \
./ant sandbox && \
./ant installer && \
mv /home/portico/dist/portico-2.2.0/ /opt/ && \
mv /home/portico/dist/portico-2.2.0-linux64.tar.gz /opt/portico-2.2.0/
	
WORKDIR /opt/portico-2.2.0

# EXPORT 52295

COPY ./RTI.rid /opt/portico-2.2.0/RTI.rid

RUN rm -rf /home/portico


