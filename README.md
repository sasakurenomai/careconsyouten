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

## users-table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|e-mail|string|null: false|
|pass|string|null: fales|

### Association
- has_many :posts
- has_many :jenres
- has_many :likes
  

## jenres-table

|Column|Type|Options|
|------|----|-------|
|subject|text|null: false|
|user|references|null: false, foreign_key: true|

### Association
- has_many :posts
- belongs_to :user

## posts-table

|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|content|text|null: false|
|image|text||
|jenre|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- hasmany :likes
- belongs_to :jenre


## likes-table

|Column|Type|Options|
|------|----|-------|
|interim|text|null: false|
|post|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :user
    
    

  




