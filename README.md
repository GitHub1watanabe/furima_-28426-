## usersテーブル

|Column|Type|Options|
|------|----|-------|
|mail_address|string|null: false|
|password|string|null: false|
|birthday|date|null: false|
|surname|integer|null: false|
|name|integer|null: false|
|surname_furigana|integer|null: false|
|name_furigana|integer|null: false|

### Association
- has_many :items
- has_many :buy


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
- belongs_to :user
- belongs_to :buy


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
|buy_id|null: false|
|postal_code|string|null: false|
|prefectures|integer|null: false|
|phone_number|string|null: false|
|municipalities|integer|null: false|


### Association
- belongs_to :user

