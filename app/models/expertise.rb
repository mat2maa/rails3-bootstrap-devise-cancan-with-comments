class Expertise < ActiveRecord::Base

  has_and_belongs_to_many :user_profiles

  attr_accessible :name
end
