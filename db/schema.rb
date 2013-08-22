# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130822142020) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activities_user_profiles", :id => false, :force => true do |t|
    t.integer "activity_id"
    t.integer "user_profile_id"
  end

  create_table "administrators", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expertises", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expertises_user_profiles", :id => false, :force => true do |t|
    t.integer "expertise_id"
    t.integer "user_profile_id"
  end

  create_table "interests", :force => true do |t|
    t.string   "name"
    t.integer  "user_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "media_interests", :force => true do |t|
    t.string   "name"
    t.integer  "user_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "media_scopes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "media_scopes_user_profiles", :id => false, :force => true do |t|
    t.integer "media_scope_id"
    t.integer "user_profile_id"
  end

  create_table "media_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.integer  "user_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "user_profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "type"
    t.string   "name"
    t.string   "flat_number"
    t.string   "building_number"
    t.string   "street"
    t.string   "municipality"
    t.string   "city"
    t.string   "post_code"
    t.string   "country"
    t.string   "website"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linked_in"
    t.string   "skype"
    t.string   "google_plus"
    t.string   "rep_name"
    t.string   "rep_email"
    t.integer  "media_type_id"
    t.datetime "established"
    t.text     "mission_statement"
    t.integer  "membership_number"
    t.integer  "personnel_number"
    t.integer  "head_local_projects"
    t.integer  "head_national_projects"
    t.integer  "head_regional_projects"
    t.integer  "head_international_projects"
    t.integer  "partner_local_projects"
    t.integer  "partner_national_projects"
    t.integer  "partner_regional_projects"
    t.integer  "partner_international_projects"
    t.integer  "previous_year_budget"
    t.boolean  "gef_recipient"
    t.boolean  "gmaps"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "logo"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
