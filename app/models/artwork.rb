class Artwork < ActiveRecord::Base
  has_many :artist_artwork_assignments
  has_many :artists, through: :artist_artwork_assignments
  has_many :user_artwork_ratings

  validates :artsy_artwork_id, uniqueness: true

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
