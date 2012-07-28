class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :authorizations
  
  def add_provider(auth_hash)
    # Check if the provider already exists, so we don't add it twice
    unless authorizations.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
      a = Authorization.new
      a.user = self
      a.provider = auth_hash["provider"]
      a.uid = auth_hash["uid"]
      a.save
    end
  end
  #has_many :errors
end
