class CreateAccessLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :access_logs do |t|
      t.integer :user_id  # Załóżmy, że logi mają odniesienie do użytkownika
      t.string :action    # Przykładowe pole akcji
      t.text :details     # Dodatkowe szczegóły

      t.timestamps
    end
  end
end
