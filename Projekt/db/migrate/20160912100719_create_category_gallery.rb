class CreateCategoryGallery < ActiveRecord::Migration
  def change
    create_table :categories_galleries , id:false do |t|
      t.references :category, foreign_key: true
      t.references :gallery, foreign_key: true
    end
  end
end
