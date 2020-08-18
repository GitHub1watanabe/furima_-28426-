## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|mail_address|integer|null: false, foreign_key: true|
|password|integer|null: false, foreign_key: true|
|home_address|integer|null: false, foreign_key: true|
|buy_point|integer|null: false, foreign_key: true|

### Association
- has_one :users
- belongs_to :user_id
- belongs_to :mail_address
- belongs_to :password
- belongs_to :home_address
- belongs_to :buy_point

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|price|integer|null: false, foreign_key: true|
|image|integer|null: false, foreign_key: true|
|review|integer|null: false, foreign_key: true|
|sell|integer|null: false, foreign_key: true|
|comment|integer|null: false, foreign_key: true|

### Association
- has_one :items
- belongs_to :price
- belongs_to :image
- belongs_to :review
- belongs_to :sell
- belongs_to :comment

## buyテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_one :buy
- belongs_to :item_id
- belongs_to :user_id

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|buy_id|null: false, foreign_key: true|
|postal_code|integer|null: false, foreign_key: true|
|prefectures|integer|null: false, foreign_key: true|

### Association
- has_one :address
- belongs_to :buy_id
- belongs_to :postal_code
- belongs_to :prefectures