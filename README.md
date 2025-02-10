Here is the complete `README.md` file for your URL shortening service project:

```markdown
# URL Shortener

This is a URL shortening service built with Ruby on Rails.

## Requirements

- Ruby >= 2.7.0
- Rails ~> 7.0.0
- PostgreSQL

## Setup

1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/url_shortener.git
   cd url_shortener
   ```

2. Install dependencies:
   ```sh
   bundle install
   ```

3. Set up the database:
   ```sh
   rails db:create
   rails db:schema:load
   ```

4. Start the Rails server:
   ```sh
   rails server
   ```

## Running Tests

To run the test suite, use the following command:
```sh
bundle exec rspec
```

## API Documentation

API documentation is available at `/api-docs` using Rswag.

## Admin Dashboard

The admin dashboard is available at `/admin` using ActiveAdmin.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License.
```