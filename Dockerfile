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

RUN apt-get update && \
    apt-get install -y --allow-downgrades --allow-remove-essential \
        --allow-change-held-packages \

# JDK Java 8
RUN apt-get install -y build-essential python-dev git gnome-tweak-tool oracle-java8-installer
RUN apt-get install tomcat7
RUN apt-get install tomcat7-docs tomcat7-admin tomcat7-examples
