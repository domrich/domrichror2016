class AddImageToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_filename, :string
  end
end
