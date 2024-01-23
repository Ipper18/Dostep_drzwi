class AddCardIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :card_id, :integer
    add_index :cards, :card_id, unique: true
  end
end
