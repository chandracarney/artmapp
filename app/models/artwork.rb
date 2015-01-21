class Artwork < ActiveRecord::Base
  belongs_to :artist
  has_many :user_artwork_ratings

  def self.random
    limit(1).order("RANDOM()").first
  end

  # def no_duplicated_artwork_shown(user_id)
  #   #work has many likes
  #   work = limit(1).order("RANDOM()").first
  #   user_ids = work.likes.map { |like| like.user_id }
  #   while user_ids.include?(user_id)
  #     work = limit(1).order("RANDOM()").first
  #     user_ids = work.likes.map { |like| like.user_id }
  #   end
  #   work
  #   #likes belong to a user
  #   #all worked liked by user should not be shown
  # end
  #
  # # want to knoww a work wont show again if it skipped or liked
  # # this is based off of the user viewing the work
end
