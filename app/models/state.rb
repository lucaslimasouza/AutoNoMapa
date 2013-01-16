class State < ActiveRecord::Base
  attr_accessible :acronym, :name, :city
  has_many :city
end
