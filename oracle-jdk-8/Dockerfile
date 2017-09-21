# Docker base image with Oracle JDK 8

FROM debian:jessie
MAINTAINER redspark <infra@redspark.io>

USER root

RUN apt-get update && apt-get install -y wget \ 
&& apt-get clean

RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz -O /tmp/jdk-8u144-linux-x64.tar.gz
RUN tar -zxvf /tmp/jdk-8u144-linux-x64.tar.gz -C /tmp && mv /tmp/jdk1.8.0_144 /opt
RUN rm -rf /tmp/jdk-8u144-linux-x64.tar.gz
RUN update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 0

ENV JAVA_HOME /opt/jdk1.8.0_144
ENV PATH $PATH:$JAVA_HOME/bin