class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :space_photo, :photo
  end
end
