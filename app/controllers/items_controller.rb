class ItemsController < ApplicationController
  before_action :move_to_index, only: [:new]
  def index
    @items = Item.order("created_at ASC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
       @item.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def item_params
    params.require(:item).permit(:image, :name, :comment, :category_id, :status_id, :fee_id, :delivery_area_id, :delivery_date_id, :price).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      flash[:alert]="You need to sign in or sign up before continuing."
      redirect_to "/users/sign_in"
    end
  end
end
