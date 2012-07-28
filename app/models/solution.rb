class Solution < ActiveRecord::Base
  attr_accessible :description, :error_id
  
  belongs_to :error
  
end
