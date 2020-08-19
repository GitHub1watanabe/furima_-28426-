## usersテーブル

|Column|Type|Options|
|------|----|-------|
|mail_address|string|null: false|
|password|string|null: false|
|birthday|date|null: false|
|surname|string|null: false|
|name|string|null: false|
|surname_furigana|string|null: false|
|name_furigana|string|null: false|
|nickname|string|null: false|

### Association
- has_many :items
- has_many :buys
- has_one :address


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|string|null: false|
|image|string|null: false|
|comment|integer|null: false|
|category|integer|null: false|
|status|integer|null: false|
|delivery_date|integer|null: false|
|delivery_area|integer|null: false|

### Association
- has_one :buy
- belongs_to :user


## buyテーブル
|Column|Type|Options|
|------|----|-------|
|item|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|postal_code|string|null: false|
|prefectures|integer|null: false|
|phone_number|string|null: false|
|municipalities|string|null: false|
|house_number|string|null: false|
|building|string|

### Association
- belongs_to :user
- has_many :buy