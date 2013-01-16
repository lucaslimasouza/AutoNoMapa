class AddProfileAtAddress < ActiveRecord::Migration
  def up
    add_column :addresses, :profile_id, :integer
  end

  def down
    remove_column :addresses, :profile_id
  end
end
