class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.date :valid_from
      t.date :valid_to

      t.timestamps
    end
  end
end
