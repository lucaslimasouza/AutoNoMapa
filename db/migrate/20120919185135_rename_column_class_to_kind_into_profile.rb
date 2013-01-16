class RenameColumnClassToKindIntoProfile < ActiveRecord::Migration
  def up
  	rename_column :profiles, :class, :kind
  end

  def down
  	rename_column :profiles, :kind, :class
  end
end
