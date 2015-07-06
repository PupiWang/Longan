FROM ruby:2.2.0
MAINTAINER Pupi Wang (dreamjl@live.cn)
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /longan
WORKDIR /longan
ADD Gemfile /longan/Gemfile
RUN bundle install
ADD . /longan

EXPOSE 3000
