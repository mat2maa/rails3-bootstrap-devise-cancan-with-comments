class CreateMediaInterests < ActiveRecord::Migration
  def change
    create_table :media_interests do |t|
      t.string :name
      t.integer :user_profile_id

      t.timestamps
    end
  end
end
