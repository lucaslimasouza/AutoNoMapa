class Address < ActiveRecord::Base
  attr_accessible :neighborhood, :number, :street, :city_id
  belongs_to :city
  belongs_to :profile
end
