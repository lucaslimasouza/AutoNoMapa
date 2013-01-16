class CreateCategoriesProfiles < ActiveRecord::Migration
  def up
    create_table :categories_profiles, id: false do |t|
      t.references :category
      t.references :profile
    end
  end

  def down
      drop_table :categories_profiles
  end
end
