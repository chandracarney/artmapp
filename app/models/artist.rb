class Artist < ActiveRecord::Base
  has_many :artworks
  has_many :user_artist_ratings

  def self.random
    Artist.where.not(:id => user.user_artist_ratings.pluck(:artwork_id)).limit(1).order("RANDOM()").first
  end
end
