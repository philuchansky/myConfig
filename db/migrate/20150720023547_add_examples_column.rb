class AddExamplesColumn < ActiveRecord::Migration
  def change
    add_column :posts, :samplecode, :text
  end
end
