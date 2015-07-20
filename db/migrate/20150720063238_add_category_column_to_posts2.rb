class AddCategoryColumnToPosts2 < ActiveRecord::Migration
  def change
    def change
      add_column :posts, :category, :text
    end
  end
end
