class City < ActiveRecord::Base
  attr_accessible :capital, :name, :state_id, :state
  belongs_to :state
  has_many :addresses
end
