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
- has_many :likes
  

## posts-table

|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|content|text|null: false|
|image|text||
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- hasmany :likes
- hasmany :posts_jenres
- hasmany :jenres, through: :posts_jenres

## posts_jenres-table

|Column|Type|Options|
|------|----|-------|
|post|references|null: false, foreign_key: true|
|jenre|references|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :jenre


## jenres-table

|Column|Type|Options|
|------|----|-------|
|subject|text|null: false|

### Association
- hasmany :posts_jenres
- hasmany :posts, through: :posts_jenres

## likes-table

|Column|Type|Options|
|------|----|-------|
|interim|text|null: false|
|post|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :user




