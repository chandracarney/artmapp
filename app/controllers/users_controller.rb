class UsersController < ApplicationController
  def create
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def index
  end
end
