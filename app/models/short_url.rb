class ShortenedUrl < ApplicationRecord
  belongs_to :user
  has_many :url_clicks, dependent: :destroy

  before_create :generate_short_code

  validates :original_url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }

  private

  def generate_short_code
    self.short_code ||= SecureRandom.hex(4)
  end
end