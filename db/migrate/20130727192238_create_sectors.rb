class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
      t.integer :user_profile_id

      t.timestamps
    end
  end
end
