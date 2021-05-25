# アプリ名
my-study-2

# 概要
目標に向かって、同じ志を持った仲間達と切磋琢磨しあえるコミュニティです。<br>
自分の目標をアウトプットしたり、みんなの目標を覗いてコメントを用いた交流ができます。

# 本番環境
https://my-study-2.herokuapp.com/

### ログイン情報
・Eメール：test@test
・パスワード：111111

# 目指した課題解決
現在、プログラミング学習を行っています。<br>
理解を深めるには、どれだけの学習時間を確保したかだと思います。<br>
学習する目標、必要な学習時間、それをいつまでに行うのかを日々管理できるアプリです。<br>
また、他のユーザーの目標を閲覧できたり、コメント機能を用いた交流を取ることができます。<br>
「学習意欲がわかない」時などに支えになるのは、同じ志を持った仲間達で、このアプリです。<br>

# 洗い出した要件定義
## ①学習時間の更新機能
[![Image from Gyazo](https://i.gyazo.com/f48fddc99a1a92162038a284517385a9.gif)](https://gyazo.com/f48fddc99a1a92162038a284517385a9)
本日の学習時間を入力することで、残り時間に反映されるため、自身で決めた学習時間までモチベーションを保つ事ができます。

## ②コメント投稿機能
[![Image from Gyazo](https://i.gyazo.com/05afc0b2f09f994987dafb0de7b9ba37.gif)](https://gyazo.com/05afc0b2f09f994987dafb0de7b9ba37)
みんなの目標（他のユーザーの学習目標）の詳細ページから、ニックネーム付きでコメント投稿できます。


# DB設計
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

# 開発環境

## バックエンド
Ruby , Ruby on Rails 

## フロントエンド
HTML , CSS , Bootstrap , JQuery 

## データベース
SequelPro

## インフラ
Heroku

## ソース管理
GitHub , GitHubDesktop

## エディタ
VSCode

