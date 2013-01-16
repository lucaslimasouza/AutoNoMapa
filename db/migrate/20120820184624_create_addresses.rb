class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :neighborhood
      t.string :number
      t.references :city

      t.timestamps
    end
  end

  def down
    drop_table :address
  end
end
