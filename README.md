## usersテーブル

|Column|Type|Options|
|------|----|-------|
|mail_address|integer|null: false, foreign_key: true|
|password|integer|null: false, foreign_key: true|
|birthday|integer|null: false, foreign_key: true|
|surname_name|integer|null: false, foreign_key: true|
|furigana|integer|null: false, foreign_key: true|

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
|price|integer|null: false, foreign_key: true|
|image|integer|null: false, foreign_key: true|
|sell|integer|null: false, foreign_key: true|
|comment|integer|null: false, foreign_key: true|
|category|integer|null: false, foreign_key: true|
|status|integer|null: false, foreign_key: true|

### Association
- has_one :items
- belongs_to :price
- belongs_to :image
- belongs_to :sell
- belongs_to :comment
- belongs_to :category
- belongs_to :status

## buyテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item_id
- belongs_to :user_id

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|buy_id|null: false, foreign_key: true|
|postal_code|integer|null: false, foreign_key: true|
|prefectures|integer|null: false, foreign_key: true|
|delivery_date|integer|null: false, foreign_key: true|
|delivery_charge|integer|null: false, foreign_key: true|

### Association
- has_one :address
- belongs_to :buy_id
- belongs_to :postal_code
- belongs_to :prefectures
- belongs_to :delivery_date
- belongs_to :delivery_charge