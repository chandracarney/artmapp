class UserArtworkRatingsController < ApplicationController
  def create
    @user_artwork_rating = current_user.user_artwork_ratings.create(:artwork_id => params[:artwork_id], :rating => params[:rating])
    redirect_to artwork_path(random_artwork)
  end
end
