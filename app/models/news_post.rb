class NewsPost < ActiveRecord::Base

  acts_as_commentable

  belongs_to :user

  attr_accessible :article, :link, :short_description, :title, :user_id
end
