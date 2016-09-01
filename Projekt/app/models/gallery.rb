class Gallery < ActiveRecord::Base
  validates_presence_of :title, :image

  mount_uploader :image, ImagesUploader
end
