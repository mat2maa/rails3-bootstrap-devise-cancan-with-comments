class CreateExpertisesUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :expertises_user_profiles, :id => false, :force => true do |t|
      t.integer :expertise_id
      t.integer :user_profile_id
    end
  end

  def self.down
    drop_table :expertises_user_profiles
  end
end
