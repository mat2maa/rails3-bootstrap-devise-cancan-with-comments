class CreateMediaScopesUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :media_scopes_user_profiles, :id => false, :force => true do |t|
      t.integer :media_scope_id
      t.integer :user_profile_id
    end
  end

  def self.down
    drop_table :media_scopes_user_profiles
  end
end
