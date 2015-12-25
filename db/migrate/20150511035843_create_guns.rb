class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.integer :manufacturer_id
      t.string :model
      t.integer :gun_type_id
      t.string :serial_number
      t.string :year
      t.string :barrel_length
      t.string :bore_size
      t.integer :powder_id
      t.float :date_acquired
      t.text :notes

      t.timestamps null: false
    end
  end
end
