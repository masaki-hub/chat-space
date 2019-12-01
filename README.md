# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false, index: true|
|email|string|unique: true|
|pw|string|null: false|

### Association
- has_many :groups,through: :groups_users
- has_many :comments
- has_many :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|

### Association
- has_many :users,through: :groups_users
- has_many :comments
- has_many :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|text|text|null: false|
|img|integer||
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
