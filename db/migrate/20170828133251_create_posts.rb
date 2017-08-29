class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.date :dateOfPost
      t.text :reply
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
