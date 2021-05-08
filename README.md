# テーブル設計

## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :contents
- has_many :comments

## contents テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| target-name | string     | null: false |
| target-info | text       | null: false |
| target-date | date       | null: false |
| study-time  | integer    | null: false |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| content| references | null: false, foreign_key: true |

### Association

- belongs_to :content
- belongs_to :user
