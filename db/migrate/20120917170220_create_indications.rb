class CreateIndications < ActiveRecord::Migration
  def change
    create_table :indications do |t|
      t.references :searcher
      t.references :freelance

      t.timestamps
    end
  end
end
