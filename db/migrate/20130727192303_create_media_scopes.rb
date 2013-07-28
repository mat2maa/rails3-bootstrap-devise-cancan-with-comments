class CreateMediaScopes < ActiveRecord::Migration
  def change
    create_table :media_scopes do |t|
      t.string :name

      t.timestamps
    end
  end
end
