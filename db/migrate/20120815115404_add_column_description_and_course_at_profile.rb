class AddColumnDescriptionAndCourseAtProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :description, :string
    add_column :profiles, :courses, :string
  end

  def down
    remove_column :profiles, :description
    remove_column :profiles, :courses
  end
end
