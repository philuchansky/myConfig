class AddCategoryColumnToPosts3 < ActiveRecord::Migration
  def change
    add_column :posts, :category, :text
  end
end
