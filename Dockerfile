FROM ubuntu:trusty
# Ubuntu 14.04, Trusty Tahr(可靠的塔尔羊)发行版

# 道客船长荣誉出品
MAINTAINER Pupi Wang (dreamjl@live.cn)

# APT自动安装PHP相关的依赖包,如需其他依赖包在此添加.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl && \

    # 用完包管理器后安排打扫卫生可以显著的减少镜像大小.
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
    curl -sSL https://get.rvm.io | bash -s stable --ruby=2.2.2 && \
    source /usr/local/rvm/scripts/rvm && \
    rvm 2.2.2 --default && \
    gem install rails && \
    rails -v

EXPOSE 80