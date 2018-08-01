FROM ruby:2.3-slim
# Install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev imagemagick
# Set path
ENV INSTALL_PATH /mpa-forms
# Create directory
RUN mkdir -p $INSTALL_PATH
# Set path with main directory
WORKDIR $INSTALL_PATH
# Copy Gemfile to container
COPY Gemfile ./
# Set path to the Gems
ENV BUNDLE_PATH /box
# Copy code to container
COPY . .
