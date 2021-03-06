FROM ruby:2.2.2

MAINTAINER Pupi Wang (dreamjl@live.cn)

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libmysqlclient-dev

# 用完包管理器后安排打扫卫生可以显著的减少镜像大小.
RUN apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /longan
WORKDIR /longan
ADD . /longan
RUN bundle install

EXPOSE 3000

CMD ["rails", "s", "-e", "production", "-p", "3000", "-b", "0.0.0.0"]
