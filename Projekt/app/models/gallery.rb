class Gallery < ActiveRecord::Base
  has_many :comments
  has_many :categories
  validates_presence_of :title, :image

  mount_uploader :image, ImagesUploader
end
