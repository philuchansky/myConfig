class RemoveTypeColumnFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :type
  end
end
