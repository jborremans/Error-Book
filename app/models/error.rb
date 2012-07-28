class Error < ActiveRecord::Base
  attr_accessible :description, :name, :url, :explanation
  
  has_many :solutions
  
  #validates :name, :description, :explanation => true
  
end
