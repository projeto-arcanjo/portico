#! /bin/sh

mvn install:install-file \
  -Dfile=./portico.jar \
  -DgroupId=org.portico \
  -DartifactId=portico \
  -Dversion=2.1.0 \
  -Dpackaging=jar \
  -DgeneratePom=true