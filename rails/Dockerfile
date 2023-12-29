FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y vim

RUN mkdir /portfolio-app
WORKDIR /portfolio-app
COPY Gemfile /portfolio-app/Gemfile
COPY Gemfile.lock /portfolio-app/Gemfile.lock

RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . /portfolio-app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]