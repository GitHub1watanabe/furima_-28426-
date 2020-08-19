## usersテーブル

|Column|Type|Options|
|------|----|-------|
|mail_address|string|null: false, unique: true|
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


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|comment|text|null: false|
|category|integer|null: false|
|status|integer|null: false|
|delivery_date|integer|null: false|
|delivery_area|integer|null: false|
|user|references|null: false, foreign_key: true|
|fee|integer|null: false|

### Association
- has_one :buy
- belongs_to :user


## buysテーブル
|Column|Type|Options|
|------|----|-------|
|item|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user
- has_one :address

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|buy|references|null: false, foreign_key: true|
|postal_code|string|null: false|
|prefectures|integer|null: false|
|phone_number|string|null: false|
|municipalities|string|null: false|
|house_number|string|null: false|
|building|string|

### Association
- belongs_to :buy