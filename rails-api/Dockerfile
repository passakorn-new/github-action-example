FROM ruby:3.1.2-alpine
WORKDIR /api

RUN apk add --no-cache build-base git postgresql-dev tzdata libc6-compat pkgconfig
RUN gem install bundler && gem update --system

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY . .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "4000"]
EXPOSE 4000
