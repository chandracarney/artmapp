class Artwork < ActiveRecord::Base
  belongs_to :artist
  has_many :user_artwork_ratings

  def self.random
    limit(1).order("RANDOM()").first
  end

  # def self.random_unseen_by(user_id)
  #   order("RANDOM()")
  #   reject { |artwork| artwork.rated_by?(user_id) }.limit(1).first
  # end

  # def no_duplicated_artwork_shown(user_id)
  #   artwork = limit(1).order("RANDOM()").first
  #   user_ids = artwork.user_artowrk_ratings.map { |like| like.user_id }
  #   while user_ids.include?(user_id)
  #     artwork = limit(1).order("RANDOM()").first
  #     user_ids = artwork.user_artwork_ratings.map { |like| like.user_id }
  #   end
  #   artwork
  #   #ratings belong to a user
  #   #all worked liked by user should not be shown
  # end
  #
  # # ensure an artwork won't show again if it skipped or liked
  # # this is based off of the user viewing the work
end
