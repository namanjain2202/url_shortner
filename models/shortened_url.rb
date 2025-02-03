class ShortenedUrl < ApplicationRecord
    belongs_to :user
    has_many :url_clicks, dependent: :destroy
    before_create :generate_short_code
    
    def generate_short_code
      self.short_code = SecureRandom.alphanumeric(6) unless short_code.present?
    end
end