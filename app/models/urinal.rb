class Urinal < ApplicationRecord
  belongs_to :jenre

  mount_uploaders :urinal_images, UrinalImageUploader
  serialize :urinal_images, JSON
end
