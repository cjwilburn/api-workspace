#
#--------------------------------------------------------------------------
# Goal Investor API Services
#--------------------------------------------------------------------------
#

FROM phusion/baseimage:latest

MAINTAINER Courtney Wilburn <courtney@cjwilburn.com>

RUN DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm


RUN apt-get install -y software-properties-common && \
add-apt-repository -y ppa:webupd8team/java


#
#--------------------------------------------------------------------------
# Software Installation
#--------------------------------------------------------------------------
#
# JDK 8 and Tomcat
RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages build-essential python-dev git gnome-tweak-tool default-jdk && \
apt-get install -y tomcat7 && \
apt-get install -y tomcat7-docs tomcat7-admin tomcat7-examples
