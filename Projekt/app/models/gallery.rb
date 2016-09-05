class Gallery < ActiveRecord::Base
  has_many :comments
  validates_presence_of :title, :image

  mount_uploader :image, ImagesUploader
end
