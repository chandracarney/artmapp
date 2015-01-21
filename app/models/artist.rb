class Artist < ActiveRecord::Base
  has_many :artworks
  has_many :user_artist_ratings

  def self.random
    limit(1).order("RANDOM()").first
  end
end
