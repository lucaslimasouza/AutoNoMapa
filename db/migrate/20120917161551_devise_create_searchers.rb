class DeviseCreateSearchers < ActiveRecord::Migration
  def change
    create_table(:searchers) do |t|
      t.string :name
      t.string :avatar

      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.timestamps
    end

    add_index :searchers, :email,                :unique => true
    add_index :searchers, :reset_password_token, :unique => true
    # add_index :searchers, :confirmation_token,   :unique => true
    # add_index :searchers, :unlock_token,         :unique => true
    # add_index :searchers, :authentication_token, :unique => true
  end
end
