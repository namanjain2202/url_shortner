gem 'devise' # User authentication
gem 'jwt' # Token-based authentication
gem 'rack-attack' # Rate limiting
gem 'rswag' # Swagger documentation
gem 'rspec-rails' # Testing framework
gem 'geocoder' # Geolocation tracking
gem 'device_detector' # Device tracking
gem 'sidekiq' # Background jobs for analytics

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg' # PostgreSQL for production
end

# Run bundle install after modifying the Gemfile

# Terminal Commands
# rails new url_shortener --api -d postgresql
# cd url_shortener
# bundle install
# rails db:create

# Setup Devise for User Authentication
# rails generate devise:install
# rails generate devise User
# rails db:migrate