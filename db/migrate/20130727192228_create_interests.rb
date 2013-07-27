class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_profile_id
      t.string :name

      t.timestamps
    end
  end
end
