class AddFreelanceIdAtProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :freelance_id, :integer
  end

  def down
    remove_column :profiles, :freelance_id
  end
end
