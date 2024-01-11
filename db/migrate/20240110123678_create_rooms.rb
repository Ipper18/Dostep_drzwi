class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :description

      t.timestamps
    end
  end
end
