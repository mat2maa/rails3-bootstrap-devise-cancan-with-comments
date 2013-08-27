class Activity < ActiveRecord::Base

  has_and_belongs_to_many :user_profiles

  attr_accessible :name

  def user_profiles_string
    user_profiles = self.user_profiles.collect{|u| u.name}
    user_profiles.join(', ')
  end

end
