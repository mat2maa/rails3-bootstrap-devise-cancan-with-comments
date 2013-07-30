class CreateActivitiesUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :activities_user_profiles, :id => false, :force => true do |t|
      t.integer :activity_id
      t.integer :user_profile_id
    end
  end

  def self.down
    drop_table :activities_user_profiles
  end
end
