class CreateCategoryGallery < ActiveRecord::Migration
  def change
    create_table :categories_galleries , id:false do |t|
      t.references :category, index: true, foreign_key: true
      t.references :gallery, index: true, foreign_key: true
    end
  end
end
