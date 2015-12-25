class CreatePowderTypes < ActiveRecord::Migration
  def change
    create_table :powder_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
