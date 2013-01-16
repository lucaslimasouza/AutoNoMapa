class RenameColumnFatherInCategory < ActiveRecord::Migration
  def up
  	rename_column :categories, :father, :father_id
  end

  def down
  	rename_column :categories, :father_id, :father
  end
end
