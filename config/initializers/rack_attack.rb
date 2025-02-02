class Rack::Attack
  throttle('limit_shortened_url_creation', limit: 10, period: 1.hour) do |req|
    req.ip if req.path == '/shortened_urls' && req.post?
  end
end