class Error < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :solutions
  
end
