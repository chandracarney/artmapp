class Artwork < ActiveRecord::Base
  belongs_to :artist
  has_many :user_artwork_ratings

  def self.random_unseen_by(user)
    Artwork.where.not(:id => user.user_artwork_ratings.pluck(:artwork_id)).limit(1).order("RANDOM()").first
  end

  # def no_duplicated_artwork_shown(user_id)
  #   artwork = limit(1).order("RANDOM()").first
  #   user_ids = artwork.user_artowrk_ratings.map { |like| like.user_id }
  #   while user_ids.include?(user_id)
  #     artwork = limit(1).order("RANDOM()").first
  #     user_ids = artwork.user_artwork_ratings.map { |like| like.user_id }
  #   end
  # end

end
