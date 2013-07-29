# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user_id 1
    type ""
    name "MyString"
    address "MyText"
    municipality "MyString"
    city "MyString"
    post_code "MyString"
    country "MyString"
    website "MyString"
    email "MyString"
    phone "MyString"
    mobile "MyString"
    fax "MyString"
    facebook "MyString"
    twitter "MyString"
    linked_in "MyString"
    skype "MyString"
    google_plus "MyString"
    rep_name "MyString"
    rep_email "MyString"
    established "2013-07-27 21:17:53"
    mission_statement "MyText"
    membership_number 1
    personnel_number 1
    head_local_projects 1
    head_national_projects 1
    head_regional_projects 1
    head_international_projects 1
    partner_local_projects 1
    partner_national_projects 1
    partner_regional_projects 1
    partner_international_projects 1
    previous_year_budget 1
    gef_recipient false
  end
end
