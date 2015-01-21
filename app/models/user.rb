class User < ActiveRecord::Base
  has_many :user_artwork_ratings
  has_many :user_artist_ratings

  def self.find_or_create_by_auth(auth_data)
    user = User.where(provider: auth_data['provider'], uid: auth_data['uid']).first_or_create
    if user.name != auth_data["info"]["name"]
      user.name = auth_data["info"]["name"]
      user.save
    end
    user
  end
end
