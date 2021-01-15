# beyond

## URL

## 概要
* マラソンランナーによる「この大会おもしろかった」の投稿・共有ができるポートフォリオです。
* 投稿した大会記録をマイページ管理したり、興味のあるエリアやキーワードで大会を調べたりと、ランナー目線で大会の情報を交換できるようなサービスです。
### テーマ
* 全国各地のマラソンランナーが、物理的な距離を超えて、お互いに情報発信・情報交換しながら次の楽しみを見つけていくという意味から「beyond（＝超えていく）」と名付けています。
### テーマを選んだ理由
* 健康維持、旅行、思い出作りなど、色々兼ね合わせてマラソンを走ることを小さな趣味にしていて、都市部の人気の大会〜地方の大会まで、行ったことのない土地をマラソンで巡りたいと思っています。
* ただ、個人で集めた情報や地域のマラソンコミュニティ情報は、近場の大会情報にまとまってしまいがちで、全国各地のランナーが情報を持ち寄る場所があればもっとランナー人生が楽しくなるのではと思い、テーマに選びました。
* **投稿に完走タイムや写真を投稿すると、出場記録の管理としても使えるサービスになっています。**
### ターゲットユーザー
* マラソンガチ勢
* 旅好きランナー
* グルメ好きランナー
* 大学生サークル

## 機能・技術
* ユーザー管理：devise
* 大会情報の投稿
* 投稿データの編集/削除
* コメント
* 検索：ransack
* 画像プレビュー：Active_Storage
* いいね：ajax

## 環境
* フロントエンド
  * HTML/CSS
  * JavaScript、jQuery
* バックエンド
  * Ruby 2.6.5
  * Rails 6.0.0
* インフラ
  * MySQL2

## 設計

## Users テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| nickname       | string     | null: false |
| profile        | text       |             |
| appearance     | string     |             |
| highest_record | string     |             |

### Association

- has_many :posts
- has_many :comments

## Posts テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_name        | string     | null: false                    |
| event_date        | date       | null: false                    |
| title             | string     |                                |
| text              | text       |                                |
| tournament_record | string     |                                |
| prefecture_id     | integer    | null:false                     |
| user              | references | null: false, foreign_key: true |

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