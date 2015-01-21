class UserArtworkRatingsController < ApplicationController
  def create
    @user_artwork_rating = current_user.user_artwork_ratings.create(:artwork_id => params[:artwork_id])
    redirect_to artwork_path(random_artwork)
  end
end
