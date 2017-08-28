class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :userPhoto
      t.text :name
      t.text :email
      t.date :joinedDate
      t.date :dob

      t.timestamps
    end
  end
end
