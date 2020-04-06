class Branch < ActiveRecord::Base
  belongs_to :user, :optional => true
  scope :filter_by_user, -> (user_id) { where user_id: @current_user.id }
  has_many :requests
end
