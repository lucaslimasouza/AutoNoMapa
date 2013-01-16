class CreateColumnAvatarAtProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :avatar, :string
  end

  def down
    remove_column :profiles, :avatar
  end
end
