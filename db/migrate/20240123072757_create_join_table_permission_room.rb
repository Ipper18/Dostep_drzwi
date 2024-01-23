class CreateJoinTablePermissionRoom < ActiveRecord::Migration[7.1]
  def change
    create_join_table :permissions, :rooms do |t|
      t.index :permission_id
      t.index :room_id
    end
  end
end
