class AddTypeColumn < ActiveRecord::Migration
  def change
    add_column :posts, :type, :text
  end
end

