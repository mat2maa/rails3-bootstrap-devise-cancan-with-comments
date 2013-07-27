class Interest < ActiveRecord::Base

  belongs_to :user_profile

  attr_accessible :name, :user_profile_id
end
