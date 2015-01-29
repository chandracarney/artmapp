class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_user
                :random_artwork
                :random_artist

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def random_artwork
    @current_user.unseen_artwork
  end

  def random_artist
    @current_user.unseen_artist
  end
end
