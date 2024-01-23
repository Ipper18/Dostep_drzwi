class AddCardIdToPermissions < ActiveRecord::Migration[7.1]
  def change
    add_column :permissions, :card_id, :integer
    add_index :permissions, :card_id
  end
end
