RSpec.describe "URL Shortener API", type: :request do
    let(:user) { User.create(email: "test@example.com", password: "password") }
    let(:headers) { { "Authorization" => "Bearer #{user.jwt_token}" } }
    
    it "creates a shortened URL" do
      post "/api/v1/urls", params: { shortened_url: { original_url: "https://example.com" } }, headers: headers
      expect(response).to have_http_status(:created)
    end
  
    it "retrieves a shortened URL" do
      url = ShortenedUrl.create(original_url: "https://example.com", user: user)
      get "/api/v1/urls/#{url.short_code}", headers: headers
      expect(response).to have_http_status(:ok)
    end
  end
  