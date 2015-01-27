class Artwork < ActiveRecord::Base
  has_many :artist_artwork_assignments
  has_many :artists, through: :artist_artwork_assignments
  has_many :user_artwork_ratings

  validates :artsy_artwork_id, uniqueness: true
end
