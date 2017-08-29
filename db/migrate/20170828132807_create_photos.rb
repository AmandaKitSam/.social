class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.text :title
      t.text :image
      t.text :comment
      t.integer :user_id # Need it for likes
      t.integer :photo_id # Need it to show which photo?

      t.timestamps
    end
  end
end
