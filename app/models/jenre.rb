class Jenre < ApplicationRecord
  #has_many :post_jenres
  has_many :posts #, through: :post_jenres
end
