class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :card, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.timestamp :time

      t.timestamps
    end
  end
end
