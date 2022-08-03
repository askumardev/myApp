FROM ruby:2.7.3

ENV BUNDLER_VERSION=2.3.10

RUN apt-get update -qq && apt-get install -y \
  binutils-gold \
  build-base \
  curl \
  file \
  g++ \
  gcc \
  git \
  less \
  libstdc++ \
  libffi-dev \
  libc-dev \ 
  linux-headers \
  libxml2-dev \
  libxslt-dev \
  libgcrypt-dev \
  make \
  netcat-openbsd \
  nodejs \
  openssl \
  pkgconfig \
  postgresql-dev \
  python \
  tzdata \
  yarn

RUN gem install bundler -v 2.3.10

ENV app /app
RUN mkdir -p $app

WORKDIR $app
COPY Gemfile Gemfile.lock ./
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install
COPY package.json yarn.lock ./
RUN yarn install --check-files
COPY . ./ 

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]

ADD . $app

EXPOSE 3000

