class Post < ApplicationRecord
  belongs_to :user
  belongs_to :jenre
  
  has_many :likes, dependent: :destroy

  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  validates :title, presence: true
  validates :title, length: {maximum: 10}
  validates :content, presence: true
  validates :content, length: {maximum: 300}
end
