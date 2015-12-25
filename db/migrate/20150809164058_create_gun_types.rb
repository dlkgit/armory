class CreateGunTypes < ActiveRecord::Migration
  def change
    create_table :gun_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
