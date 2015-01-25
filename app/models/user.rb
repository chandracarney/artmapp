class User < ActiveRecord::Base
  has_many :user_artwork_ratings
  has_many :user_artist_ratings

  def self.find_or_create_by_auth(auth_data)
    user = find_or_create_user(auth_data)
    if user.name != auth_data["info"]["name"]
      user.name = auth_data["info"]["name"]
      user.save
    end
    user
  end
  
  # def self.unseen_artwork
  #   Artwork.where.not(:id => user_artwork_ratings.pluck(:artwork_id)).limit(1).order("RANDOM()").first
  # end

  private

  def self.find_or_create_user(auth_data)
    User.where(provider: auth_data['provider'], uid: auth_data['uid']).first_or_create
  end
end
