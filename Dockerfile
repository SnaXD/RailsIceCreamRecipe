FROM ruby:3.2

# System deps
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    curl \
    gnupg \
    nodejs \
    npm \
    sqlite3 \
    libsqlite3-dev \
    ca-certificates \
    unzip

# Install Yarn (modern way)
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor -o /usr/share/keyrings/yarnkey.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" \
    | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y yarn

# Set working directory
WORKDIR /app

# Cache gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy app code
COPY . .

# Install JS deps
RUN yarn install

# Build Tailwind CSS once
RUN yarn build:css || true

# Expose Rails port
EXPOSE 3000

# Start Rails in development
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bin/dev"]
