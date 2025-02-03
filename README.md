# README.md

# URL Shortener Service

## Overview
A simple URL shortening service built using Ruby on Rails. It allows users to generate short links, track analytics, set expiration dates, and manage URLs via an API.

## Features
- User Authentication (Devise & JWT)
- Shorten URLs with custom aliases
- Track URL analytics (clicks, referrer, geolocation, device type)
- Set expiration dates for links
- Rate limiting to prevent abuse
- Admin dashboard for monitoring
- Secure API with token-based authentication
- Comprehensive RSpec tests
- CI/CD setup with GitHub Actions

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/url_shortener.git
   cd url_shortener
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Set up the database:
   ```sh
   rails db:create db:migrate
   ```
4. Start the server:
   ```sh
   rails server
   ```

## API Endpoints
### Authentication
- `POST /users/sign_in` - User login
- `POST /users/sign_up` - User registration

### URL Shortening
- `POST /api/v1/urls` - Create a shortened URL
- `GET /api/v1/urls/:short_code` - Retrieve original URL

## Running Tests
Run RSpec tests:
```sh
bundle exec rspec
```

## Deployment
The project includes a CI/CD pipeline with GitHub Actions. To deploy:
```sh
git push origin main
```

## License
MIT License