require 'rails_helper'

RSpec.describe BuyAddress, type: :model do

  describe '寄付情報の保存' do
    before do
      @buyer = FactoryBot.create(:user)
      @seller = FactoryBot.create(:user)
      @item = FactoryBot.build(:item, user_id: @seller.id)
      @item.image = fixture_file_upload('public/images/test_image.jpg')
      @item.save
      @buy = FactoryBot.build(:buy_address, user_id: @buyer.id, )
    end

    it 'postal_codeが空だと保存できないこと' do
      @buy.postal_code = nil
      @buy.valid?
      expect(@buy.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @buy.postal_code = '1234567'
      @buy.valid?
      expect(@buy.errors.full_messages).to include("Postal code is invalid. Include hyphen(-)")
    end
    it 'prefecturesを選択していないと保存できないこと' do
      @buy.prefectures = 0
      @buy.valid?
      expect(@buy.errors.full_messages).to include("Prefectures must be other than 0")
    end
    it 'municipalitiesは空では保存できない' do
      @buy.municipalities = nil
      @buy.valid?
      expect(@buy.errors.full_messages).to include("Municipalities can't be blank")
    end
    it 'house_numberは空では保存できない' do
      @buy.house_number = nil
      @buy.valid?
      expect(@buy.errors.full_messages).to include("House number can't be blank")
    end
    it 'buildingは空でも保存できること' do
      @buy.building = nil
      expect(@buy).to be_valid
    end
    it 'phone_numberは空では保存できない' do
      @buy.phone_number = nil
      @buy.valid?
      expect(@buy.errors.full_messages).to include("Phone number can't be blank")
    end
    it 'phone_numberは12桁以上では保存できない' do
      @buy.phone_number = '012345678912'
      @buy.valid?
      expect(@buy.errors.full_messages).to include("Phone number Numbers longer than 11 digits cannot be saved")
    end
  end
end
