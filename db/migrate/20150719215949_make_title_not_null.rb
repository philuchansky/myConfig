class MakeTitleNotNull < ActiveRecord::Migration
  def change
    change_column :posts, :title, :string, :null => false
  end
end
