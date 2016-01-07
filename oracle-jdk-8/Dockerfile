# Docker base image with Oracle JDK 8

FROM debian:jessie
MAINTAINER redspark <infra@redspark.io>

USER root

RUN apt-get update && apt-get install -y wget \ 
&& apt-get clean

RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz -O /tmp/jdk-8u65-linux-x64.tar.gz
RUN tar -zxvf /tmp/jdk-8u65-linux-x64.tar.gz -C /tmp && mv /tmp/jdk1.8.0_65 /opt
RUN rm -rf /tmp/jdk-8u65-linux-x64.tar.gz
RUN update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_65/bin/java 0

ENV JAVA_HOME /opt/jdk1.8.0_65
ENV PATH $PATH:$JAVA_HOME/bin