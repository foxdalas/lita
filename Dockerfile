FROM ruby:2.4
MAINTAINER Maxim Pogozhiy <foxdalas@gmail.com>

RUN gem install bundler && mkdir /app
COPY Gemfile /app/Gemfile
WORKDIR /app
RUN /bin/bash -c bundle install --without development test --clean

CMD [ "/bin/bash", "-c", "bundle install --without development test --clean && bundle exec lita"]
