class UrlClick < ApplicationRecord
    belongs_to :shortened_url
    validates :ip_address, presence: true
end