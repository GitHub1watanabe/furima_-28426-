class BuysController < ApplicationController
  before_action :item_buy,
  
  def index
    @buy = BuyAddress.new
  end

  def create
    @buy = BuyAddress.new(order_params)
    if @buy.valid?
      pay_item
      @buy.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def item_buy
    @item = Item.find(params[:item_id])
  end

  def order_params
    params.require(:item).permit(:postal_code, :prefectures, :phone_number, :municipalities, :house_number, :building,).merge(user_id: current_user.id, item_id: @item.id ,token: params[:token])
  end
  
  def pay_item
    @item = Item.find(params[:item_id])
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @item.price,  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end

end

