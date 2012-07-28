class Error < ActiveRecord::Base
  attr_accessible :description, :name, :url, :explanation, :topic_id
  
  has_many :solutions
  belongs_to :topic
  #validates :name, :description, :explanation => true
  
end
