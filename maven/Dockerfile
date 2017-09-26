# Docker base image with Oracle JDK 8 and Maven 3.5.0

FROM redspark/oracle-jdk:1.8.0_144
MAINTAINER redspark <infra@redspark.io>

USER root

RUN apt-get update && apt-get install -y wget \ 
&& apt-get clean

RUN wget http://www-us.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz -O /tmp/apache-maven-3.5.0-bin.tar.gz
RUN tar -xzvf /tmp/apache-maven-3.5.0-bin.tar.gz -C /tmp
RUN mv /tmp/apache-maven-3.5.0 /opt
RUN rm -rf /tmp/apache-maven-3.5.0-bin.tar.gz

ENV M2=/opt/apache-maven-3.5.0
ENV PATH $PATH:$M2/bin