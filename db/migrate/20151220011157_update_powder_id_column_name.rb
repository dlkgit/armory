class UpdatePowderIdColumnName < ActiveRecord::Migration
  def change
    rename_column :guns, :powder_id, :powder_type_id
  end
end
