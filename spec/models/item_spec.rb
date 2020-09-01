require 'rails_helper'
describe Item do
  before do
    # user = FactoryBot.create(:item_user)
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload('public/images/test_image.jpg')
  end

  describe 'ユーザーの商品出品' do
    context '出品のページ遷移がうまくいくとき' do
      it "出品のページ遷移がうまくいくとき" do
        expect(@item).to be_valid
      end
    end
  end
end