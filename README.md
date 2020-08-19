## usersテーブル

|Column|Type|Options|
|------|----|-------|
|mail_address|string|null: false|
|password|string|null: false|
|birthday|date|null: false|
|surname|integer|null: false|
|name|integer|null: false|
|surname_furigana|string|null: false|
|name_furigana|string|null: false|

### Association
- has_many :users


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|price|string|null: false|
|image|string|null: false|
|comment|integer|null: false|
|category|integer|null: false|
|status|integer|null: false|
|delivery_date|integer|null: false|
|delivery_charge|integer|null: false|

### Association
- belongs_to :buy
- belongs_to :user


## buyテーブル
|Column|Type|Options|
|------|----|-------|
|item|integer|null: false, foreign_key: true|
|user|integer|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|buy_id|null: false, foreign_key: true|
|postal_code|string|null: false|
|prefectures|integer|null: false|
|phone_number|string|null: false|
|municipalities|string|null: false|


### Association
- has_one :address
- has_many :buy_id

