class UserProfile < ActiveRecord::Base

  acts_as_gmappable

  belongs_to :user

  has_many :activities
  has_many :expertises
  has_many :interests
  has_many :sectors
  has_many :media_interests
  has_many :media_scopes
  has_many :media_types

  attr_accessible :address, :city, :country, :email, :established, :facebook, :fax, :gef_recipient, :google_plus, :head_international_projects, :head_local_projects, :head_national_projects, :head_regional_projects, :linked_in, :membership_number, :mission_statement, :mobile, :municipality, :name, :partner_international_projects, :partner_local_projects, :partner_national_projects, :partner_regional_projects, :personnel_number, :phone, :post_code, :previous_year_budget, :rep_email, :rep_name, :skype, :twitter, :type, :user_id, :website


  private

  def gmaps4rails_address
    "#{self.address}, #{self.city}, #{self.country}"
  end

end
