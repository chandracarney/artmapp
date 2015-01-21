class UserArtistRatingsController < ApplicationController
  def create
    @user_artist_rating = current_user.user_artist_ratings.create(:artist_id => params[:artist_id])
    redirect_to artist_path(random_artist)
  end
end
