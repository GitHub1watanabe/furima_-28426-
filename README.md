## usersテーブル

|Column|Type|Options|
|------|----|-------|
|mail_address|integer|null: false|
|password|string|null: false|
|birthday|integer|null: false|
|surname_name|integer|null: false|
|furigana|integer|null: false|

### Association
- has_one :users
- belongs_to :mail_address
- belongs_to :password
- belongs_to :birthday
- belongs_to :surname_name
- belongs_to :furigana

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|price|string|null: false|
|image|string|null: false|
|sell|integer|null: false|
|comment|integer|null: false|
|category|integer|null: false|
|status|integer|null: false|
|delivery_date|integer|null: false|
|delivery_charge|integer|null: false|

### Association
- has_one :items
- belongs_to :price
- belongs_to :image
- belongs_to :sell
- belongs_to :comment
- belongs_to :category
- belongs_to :status
- belongs_to :delivery_date
- belongs_to :delivery_charge

## buyテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|buy_id|null: false|
|postal_code|string|null: false|
|prefectures|integer|null: false|
|phone_number|string|null: false|
|municipalities|integer|null: false|


### Association
- has_one :address
- belongs_to :buy_id
- belongs_to :postal_code
- belongs_to :prefectures
- belongs_to :phone_number
- belongs_to :municipalities
