class User < ActiveRecord::Base
has_secure_password
validates :email, :presence => true, :uniqueness => true
has_many :branches  #Relationship between Models

# scope :filter_by_email, -> (email) { where email: email }
# scope :filter_by_password, -> (password) { where password: password }
end
