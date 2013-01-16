class AddIndexToCategoriesProfiles < ActiveRecord::Migration
  def up
    add_index :categories_profiles, [:category_id, :profile_id]
    add_index :categories_profiles, [:profile_id, :category_id]
  end

  def down
    remove_index :categories_profiles, [:category_id, :profile_id]
    remove_index :categories_profiles, [:profile_id, :category_id]
  end
end
