class ShortenedUrl < ApplicationRecord
    validates :long_url, :short_url, presence: true, uniqueness: { scope: :long_url }

    def self.random_code
        SecureRandom.urlsafe_base64
    end
end