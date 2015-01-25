class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_user
                :random_artwork
                # :random_artist

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def random_artwork
    Artwork.random_unseen_by(@current_user)
  end

  # def random_artist
  #   Artist.random_unseen_by(user_id)
  # end
end
