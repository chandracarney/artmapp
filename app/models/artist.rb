class Artist < ActiveRecord::Base
  has_many :artist_artwork_assignments
  has_many :artworks, through: :artist_artwork_assignments
  has_many :user_artist_ratings

  validates :artsy_artist_id, uniqueness: true

  def self.random
    Artist.where.not(:id => user.user_artist_ratings.pluck(:artwork_id)).limit(1).order("RANDOM()").first
  end
end
