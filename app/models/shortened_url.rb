class ShortenedUrl < ApplicationRecord
  belongs_to :user
  has_many :url_clicks, dependent: :destroy

  validates :original_url, presence: true
  validates :short_code, uniqueness: true

  before_create :generate_short_code

  private

  def generate_short_code
    self.short_code = SecureRandom.uuid[0..5] if short_code.blank?
  end

  def active?
    expires_at.nil? || expires_at > Time.current
  end
end