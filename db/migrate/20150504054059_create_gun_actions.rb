class CreateGunActions < ActiveRecord::Migration
  def change
    create_table :gun_actions do |t|
      t.string :action_type

      t.timestamps null: false
    end
  end
end
