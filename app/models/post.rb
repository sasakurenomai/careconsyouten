class Post < ApplicationRecord
  #has_many :post_jenres
  #has_many :jenres, through: :post_jenres
  belongs_to :jenre
end
