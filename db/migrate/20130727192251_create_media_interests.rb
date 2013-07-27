class CreateMediaInterests < ActiveRecord::Migration
  def change
    create_table :media_interests do |t|
      t.integer :user_profile_id
      t.string :name

      t.timestamps
    end
  end
end
