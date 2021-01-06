# テーブル設計

## Users テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| nickname       | string     | null: false |
| profile        | text       | null: false |
| appearance     | string     | null: false |
| highest_record | string     |             |

### Association

- has_many :posts
- has_many :comments

## Posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| event_name    | string     | null: false                    |
| event_date    | date       | null: false                    |
| title         | string     | null: false                    |
| text          | text       | null: false                    |
| record        | string     |                                |
| prefecture_id | integer    | null:false                     |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## Comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| post      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post