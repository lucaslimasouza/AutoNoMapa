class AddSubcategoryInCategory < ActiveRecord::Migration
  def up
  	add_column :categories, :father, :integer
  end

  def down
  	remove_column :categories, :father
  end
end
