class ShortenedUrl < ApplicationRecord
    belongs_to :user

    before_create :generate_shortened_url

    validates :custom_alias, uniqueness: true, allow_nil: true

    scope :active, -> { where('expires_at IS NULL OR expires_at > ?', Time.current) }

    def generate_shortened_url
      self.shortened_url = SecureRandom.hex(5) unless custom_alias.present?
    end

    def track_click(request)
      self.clicks += 1
      self.referrer = request.referrer
      self.geolocation = Geocoder.search(request.remote_ip).first&.city
      self.device_type = request.user_agent
      save
    end
  end