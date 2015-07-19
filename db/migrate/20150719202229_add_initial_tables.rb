class AddInitialTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :homepage
    end
  end
end
