class Gallery < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories
  validates_presence_of :title, :image

  mount_uploader :image, ImagesUploader
end
