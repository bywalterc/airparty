class ChangeSpacesColumnTypeToCategory < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :type, :category
  end
end
