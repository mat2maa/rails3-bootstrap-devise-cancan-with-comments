class UserProfile < ActiveRecord::Base

  acts_as_gmappable

  belongs_to :user
  belongs_to :media_types

  has_many :interests, :dependent => :destroy
  has_many :sectors, :dependent => :destroy
  has_many :media_interests, :dependent => :destroy

  has_and_belongs_to_many :activities
  has_and_belongs_to_many :expertises
  has_and_belongs_to_many :media_scopes

  attr_accessible :address, :city, :country, :email, :established, :facebook, :fax, :gef_recipient, :google_plus, :head_international_projects, :head_local_projects, :head_national_projects, :head_regional_projects, :linked_in, :membership_number, :mission_statement, :mobile, :municipality, :name, :partner_international_projects, :partner_local_projects, :partner_national_projects, :partner_regional_projects, :personnel_number, :phone, :post_code, :previous_year_budget, :rep_email, :rep_name, :skype, :twitter, :type, :user_id, :website, :media_type_id, :interests_attributes, :sectors_attributes,
                  :media_interests_attributes, :activity_ids, :expertise_ids, :media_scope_ids

  validates_presence_of :address, :city, :country, :name, :rep_email, :rep_name, :type
  validates_uniqueness_of :name, :rep_email

  accepts_nested_attributes_for :interests,
                                :allow_destroy => true
  accepts_nested_attributes_for :sectors,
                                :allow_destroy => true
  accepts_nested_attributes_for :media_interests,
                                :allow_destroy => true

  private

  def gmaps4rails_address
    "#{self.address}, #{self.city}, #{self.country}"
  end

end
