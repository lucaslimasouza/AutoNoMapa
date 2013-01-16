class RenameClassToTypeInProfile < ActiveRecord::Migration
  def up
  	rename_column :profiles, :type, :class
  end

  def down
  	rename_column :profiles, :class, :type
  end
end
