class ItemsController < ApplicationController
  before_action :move_to_index, only: [:new]
  def index
  end
  def new
  end
  private
  def move_to_index
    unless user_signed_in?
      flash[:alert]="You need to sign in or sign up before continuing."
      redirect_to "/users/sign_in"
    end
  end
end
