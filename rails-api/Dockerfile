FROM ruby:3.1.2
WORKDIR /api

RUN gem install bundler && gem update --system

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY . .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "4000"]
EXPOSE 4000
