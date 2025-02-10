class Rack::Attack
  throttle('requests by user', limit: 5, period: 60.seconds) do |req|
    req.env['warden'].user.id if req.env['warden'].user
  end
end