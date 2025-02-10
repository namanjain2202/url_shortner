# Gemfile
source 'https://rubygems.org'

ruby '>= 2.7.0'

gem 'rails', '~> 7.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

# Authentication
gem 'devise'

# URL Analytics
gem 'geocoder'

# Rate Limiting
gem 'rack-attack'

# Admin Dashboard
gem 'activeadmin'

# Search and Filtering
gem 'ransack'

# API Documentation
gem 'rswag'

# Testing
gem 'rspec-rails'
gem 'factory_bot_rails'

# API Authentication
gem 'jwt'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'rails_12factor'
end