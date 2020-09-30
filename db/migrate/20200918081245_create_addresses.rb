class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|

      t.bigint :buy_id, foreign_key: true
      t.string :postal_code, null: false
      t.integer :prefectures, null: false
      t.string :phone_number, null: false
      t.string  :municipalities, null: false
      t.string  :house_number, null: false
      t.string  :building

      t.timestamps
    end
  end
end
