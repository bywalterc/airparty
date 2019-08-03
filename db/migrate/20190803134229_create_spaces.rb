class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :description
      t.string :type
      t.integer :capacity
      t.string :space_photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
