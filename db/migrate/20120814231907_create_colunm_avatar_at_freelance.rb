class CreateColunmAvatarAtFreelance < ActiveRecord::Migration
  def up
    add_column :freelances, :avatar, :string
  end

  def down
    remove_colunm :freelances, :avatar
  end
end
