class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :type
      t.string :name
      t.text :address
      t.string :municipality
      t.string :city
      t.string :post_code
      t.string :country
      t.string :website
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :facebook
      t.string :twitter
      t.string :linked_in
      t.string :skype
      t.string :google_plus
      t.string :rep_name
      t.string :rep_email
      t.datetime :established
      t.text :mission_statement
      t.integer :membership_number
      t.integer :personnel_number
      t.integer :head_local_projects
      t.integer :head_national_projects
      t.integer :head_regional_projects
      t.integer :head_international_projects
      t.integer :partner_local_projects
      t.integer :partner_national_projects
      t.integer :partner_regional_projects
      t.integer :partner_international_projects
      t.integer :previous_year_budget
      t.boolean :gef_recipient
      t.boolean :gmaps

      t.timestamps
    end
  end
end
