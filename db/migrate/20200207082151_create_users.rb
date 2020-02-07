class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :image
      t.string :email
      t.text :bio
      t.integer :phone_number
      t.timestamps
    end
  end
end
