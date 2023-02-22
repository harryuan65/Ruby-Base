FROM ruby:3.0.3-alpine
LABEL org.opencontainers.image.authors="harryuan65@gmail.com"
WORKDIR /tester

ARG RUBY_PACKAGES="build-base postgresql-dev tzdata"
ARG NOKOGIRI_PACKAGES="gcompat"
RUN apk upgrade \
  && apk add --update --no-cache $RUBY_PACKAGES $NOKOGIRI_PACKAGES\
  && gem install bundler
