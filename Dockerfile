# syntax=docker/dockerfile:1
FROM ruby:2.6.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm install --global yarn
COPY . /usr/src
WORKDIR /usr/src
COPY Gemfile /usr/src/Gemfile
COPY Gemfile.lock /usr/src/Gemfile.lock
RUN bundle install
RUN chmod +x /usr/src/bin/dev-entrypoint.sh
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
