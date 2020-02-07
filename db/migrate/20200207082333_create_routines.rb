class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :image
      t.string :sound
      t.text :feedback

      t.timestamps
    end
  end
end
