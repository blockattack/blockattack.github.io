FROM ubuntu:20.04

RUN apt-get update && apt-get install -yy ruby-bundler ruby-dev libcrypto++-dev build-essential

RUN gem install --update bundler:1.16.1

RUN mkdir -p /workdir

RUN adduser --disabled-password --gecos "jekyll build user" jekyll_build

USER jekyll_build

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/jekyll_build/.gem/ruby/2.7.0/bin

CMD cd /workdir && bundle install --path .bundle && bundle exec jekyll build