class AddRoomIdToAccessLogs < ActiveRecord::Migration[7.1]
  def change
    add_reference :access_logs, :room, foreign_key: true
  end
end
