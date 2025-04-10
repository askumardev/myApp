# Dockerfile

FROM ruby:3.3.2

# Set environment variables
ENV LANG=C.UTF-8 \
    BUNDLER_VERSION=2.4.22

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Install bundler
RUN gem install bundler -v "$BUNDLER_VERSION"

# Copy Gemfile and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy project files
COPY . .

EXPOSE 3000




# # Use an official Ruby runtime as a parent image
# FROM ruby:2.7.3

# # Set the working directory
# WORKDIR /app

# # Install dependencies
# RUN apt-get update && \
#     apt-get install -y \
#     build-essential \
#     nodejs \
#     postgresql-client && \
#     rm -rf /var/lib/apt/lists/*

# # Install gems
# COPY Gemfile Gemfile.lock ./
# RUN gem install bundler && \
#     bundle install --jobs 4

# # Copy the application code
# COPY . .

# # Expose ports
# EXPOSE 3000

# # Set the entrypoint command
# CMD ["rails", "server", "-b", "0.0.0.0"]






# #FROM ruby:2.7.3

# #ENV BUNDLER_VERSION=2.3.10

# #RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
#  # postgresql-client \
#  # libxml2-dev \
#  # libxslt-dev \
#   #nodejs \
#  # yarn \
#   #libffi-dev \
#  # libc-dev \
#  # file \
#  # git \
#  # tzdata \
#  # && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
  
# #WORKDIR /app
# #COPY . /app/

# #ENV BUNDLE_PATH /gems
# #RUN bundle install

# #ENTRYPOINT ["bin/rails"]
# #CMD ["bundle", "exec", "rails", "s", "-b ", "0.0.0.0"]

# #EXPOSE 3000
