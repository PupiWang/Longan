FROM ubuntu:trusty
# Ubuntu 14.04, Trusty Tahr(可靠的塔尔羊)发行版

# 道客船长荣誉出品
MAINTAINER Pupi Wang (dreamjl@live.cn)

RUN ruby -v && gem -v

EXPOSE 3000