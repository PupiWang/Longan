FROM ubuntu:trusty
# Ubuntu 14.04, Trusty Tahr(可靠的塔尔羊)发行版

# 道客船长荣誉出品
MAINTAINER Pupi Wang (support@daocloud.io)

# APT自动安装PHP相关的依赖包,如需其他依赖包在此添加.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl && \

    # 用完包管理器后安排打扫卫生可以显著的减少镜像大小.
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    curl -L https://get.rvm.io | bash -s stable \
    source ~/.rvm/scripts/rvm \
    rvm install 2.2.2 \
    rvm 2.0.0 --default \
    gem install rails \
    rails -v

EXPOSE 80