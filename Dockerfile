FROM ruby:2.2.0
MAINTAINER Pupi Wang (dreamjl@live.cn)
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /longan
WORKDIR /longan
ADD . /longan
RUN bundle install

EXPOSE 3000
