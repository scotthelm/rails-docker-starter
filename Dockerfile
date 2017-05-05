FROM ruby:2.4
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
RUN gem install bundler

WORKDIR /usr/src/app/

COPY . /usr/src/app/
