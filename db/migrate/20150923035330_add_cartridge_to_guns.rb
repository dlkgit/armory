class AddCartridgeToGuns < ActiveRecord::Migration
  def change
    add_column :guns, :cartridge, :string
  end
end
