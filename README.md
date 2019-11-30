# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_name|string|null: false|
|email|string|unique: true, match: (/@.+/)|
|pw|string|null: false, match: (/[a-z\d]{8,}/i)|
|pw|string|null: false, match: (/[a-z\d]{8,}/i), |

### Association
- has_many :groups,through: :groups_users
- has_many :users


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|comment_id|integer|null: false,foreign_key: true|

### Association
- has_many :users,through: :groups_users
- has_many :comments


## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|comment|string|null: false|
|img|integer||

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
