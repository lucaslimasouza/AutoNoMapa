class AddTypeAtProfile < ActiveRecord::Migration
  def up
  	add_column :profiles, :type, :string
  end

  def down
  	remove_column :profiles, :type
  end
end
