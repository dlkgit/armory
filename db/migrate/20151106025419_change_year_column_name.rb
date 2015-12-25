class ChangeYearColumnName < ActiveRecord::Migration
  def change
    rename_column :guns, :year, :year_manufactured
  end
end
