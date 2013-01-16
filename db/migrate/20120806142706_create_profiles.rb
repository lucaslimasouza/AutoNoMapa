class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.string :cell_phone
      t.string :nickname
      t.string :experience

      t.timestamps
    end
  end
end
