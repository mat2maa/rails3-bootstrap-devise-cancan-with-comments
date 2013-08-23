class User < ActiveRecord::Base

  has_one :user_profile, :dependent => :destroy

  has_many :news_posts

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_profile_attributes

  accepts_nested_attributes_for :user_profile

  def with_user_profile
    self.user_profile || self.build_user_profile
    self
  end
end
