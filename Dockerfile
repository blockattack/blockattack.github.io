FROM ubuntu:24.04

RUN apt-get update && apt-get install -yy ruby-bundler ruby-dev libcrypto++-dev build-essential

RUN mkdir -p /workdir

USER ubuntu

ENV GEM_HOME="/home/ubuntu/gems"

ENV PATH /home/ubuntu/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/ubuntu/.gem/ruby/2.7.0/bin

CMD cd /workdir && bundle install  && bundle exec jekyll build
