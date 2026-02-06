FROM ruby:3.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  sqlite3 \
  libsqlite3-dev

# Create app directory
WORKDIR /app

# Install gems first (Docker cache optimization)
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy project
COPY . .

# Rails port
EXPOSE 3000

# Start Rails
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails server -b 0.0.0.0"]
