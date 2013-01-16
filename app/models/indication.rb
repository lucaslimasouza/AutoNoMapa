class Indication < ActiveRecord::Base
  
  belongs_to :searcher
  belongs_to :freelance

  validates_presence_of :searcher_id, :freelance_id

  attr_accessible :freelance_id
end
