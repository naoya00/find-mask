# README

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

## shopsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||
|email|string|null: false, unique: true|
|password|string|null: false|
|image|text||
|address|string||
|station|string|add_index|
|station_walk|integer||
|shop_holiday|string||
|shop_time|stirng||

### Association
- has_many :posts
- has_many :masks

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|shop_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :shop

## masksテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,|
|image|text|null: false,|
|stock|integer|null: false,|
|shop_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :shop

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|text|string|null: false|

