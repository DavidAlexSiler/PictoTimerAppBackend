class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.text :bio
      t.integer :phone_number

      t.timestamps
    end
  end
end
