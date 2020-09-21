class BuysController < ApplicationController

  def index
    @items = Item.all.order("created_at ASC")
end

  def create
    @buy = BuyAddress.new(price: order_params[:price])
    if @buy.valid?
      pay_item
      @buy.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def order_params
    params.permit(:price, :token)
  end
  
  def pay_item
    Payjp.api_key = "sk_test_b596f59eb6ce6f59df2b377f"  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: order_params[:price],  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end

end

