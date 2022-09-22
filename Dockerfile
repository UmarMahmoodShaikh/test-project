FROM ruby:3.0.0-alpine
RUN mkdir /testproject
RUN apk add build-base
RUN apk add postgresql-dev=9.6.10-r0 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.5/main
WORKDIR /testproject
ADD Gemfile /testproject/Gemfile
ADD Gemfile.lock /testproject/Gemfile.lock
ADD . /testproject
RUN bundle install
COPY . .

RUN rake assets:precompile
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
