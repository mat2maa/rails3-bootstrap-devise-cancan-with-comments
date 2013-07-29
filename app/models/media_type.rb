class MediaType < ActiveRecord::Base

  has_many :user_profiles

  attr_accessible :name
end
