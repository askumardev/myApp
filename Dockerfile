FROM ruby:2.7.3

ENV BUNDLER_VERSION=2.3.10

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
  postgresql-client \
  libxml2-dev \
  libxslt-dev \
  nodejs \
  yarn \
  libffi-dev \
  libc-dev \
  file \
  git \
  tzdata \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
  
WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN bundle install

ENTRYPOINT ["bin/rails"]
CMD ["bundle", "exec", "rails", "s", "-b ", "0.0.0.0"]

EXPOSE 3000
