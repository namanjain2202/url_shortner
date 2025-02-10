require 'rails_helper'

RSpec.describe ShortenedUrl, type: :model do
  it 'is valid with valid attributes' do
    user = FactoryBot.create(:user)
    url = ShortenedUrl.new(original_url: 'http://example.com', user: user)
    expect(url).to be_valid
  end
end