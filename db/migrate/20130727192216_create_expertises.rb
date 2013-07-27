class CreateExpertises < ActiveRecord::Migration
  def change
    create_table :expertises do |t|
      t.integer :user_profile_id
      t.string :name

      t.timestamps
    end
  end
end
