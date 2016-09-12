class Category < ActiveRecord::Base
  has_and_belongs_to_many :galleries
  validates_presence_of :name
end
