class Administrator < UserProfile

  attr_accessible :interests_attributes, :sectors_attributes, :media_interests_attributes

  accepts_nested_attributes_for :interests,
                                :allow_destroy => true
  accepts_nested_attributes_for :sectors,
                                :allow_destroy => true
  accepts_nested_attributes_for :media_interests,
                                :allow_destroy => true
end
