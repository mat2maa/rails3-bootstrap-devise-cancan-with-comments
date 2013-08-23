class CreateNewsPosts < ActiveRecord::Migration
  def change
    create_table :news_posts do |t|
      t.integer :user_id
      t.string :title
      t.text :short_description
      t.string :link
      t.text :article

      t.timestamps
    end
  end
end
