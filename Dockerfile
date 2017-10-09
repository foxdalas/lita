FROM ruby:2.4
MAINTAINER Maxim Pogozhiy <foxdalas@gmail.com>

RUN gem install bundler && mkdir /app
COPY Gemfile /app/Gemfile
WORKDIR /app
RUN bundle install --path /app --without development test --jobs $(nproc) --clean

CMD [ "/bin/bash", "-c", "bundle exec lita"]
