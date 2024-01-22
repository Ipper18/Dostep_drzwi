class AddCardIdToAccessLogs < ActiveRecord::Migration[7.1]
  def change
    add_reference :access_logs, :card, null: false, foreign_key: true
  end
end
