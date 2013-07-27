class CreateMediaScopes < ActiveRecord::Migration
  def change
    create_table :media_scopes do |t|
      t.integer :user_profile_id
      t.string :name

      t.timestamps
    end
  end
end
