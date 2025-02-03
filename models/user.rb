class User < ApplicationRecord
    has_many :shortened_urls, dependent: :destroy
    devise :database_authenticatable, :registerable, :jwt_authenticatable, jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null
end