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

    context '商品出品がうまくいかないとき' do
      it "商品名が空だと登録できない" do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name Please enter the product name")
      end
        it "画像が必ず1枚以上必要" do
          @item.image = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Image Please paste the image")
        end
        it "商品の説明が空だと登録できない" do
          @item.comment = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Comment Please enter the product description")
        end
        it "カテゴリー情報が必須である" do
          @item.category_id = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Category Please select a category")
        end
        it "商品の状態の情報が必須である" do
          @item.status_id = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Status Please select the product status")
        end
        it "配送料の負担についての情報が必須である" do
          @item.fee_id = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Fee Please select a shipping fee")
        end
        it "発送元の地域についての情報が必須である" do
          @item.delivery_area_id = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Delivery area Please select a delivery area")
        end
        it "発送までの日数についての情報が必須である" do
          @item.delivery_date_id = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Delivery date Please select a delivery date")
        end
        it "価格についての情報が必須であること" do
          @item.price = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Price Enter price")
        end
        it "価格の範囲が、¥300~¥9,999,999の間である" do
          @item.price = 200
          @item.valid?
          expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
        end
    end
  end
end