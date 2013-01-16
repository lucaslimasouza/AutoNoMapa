class Category < ActiveRecord::Base
  attr_accessible :name, :father_id

  has_and_belongs_to_many :profiles
  has_many :subcategories, class_name: "Category", foreign_key: "father_id"
  belongs_to :father, class_name: "Category"
  validates_presence_of :name
end
