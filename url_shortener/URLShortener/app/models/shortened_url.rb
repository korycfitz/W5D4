class ShortenedUrl < ApplicationRecord
    validates :short_url, presence: true, unique: true 
end
