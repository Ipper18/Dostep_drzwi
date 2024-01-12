class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password
      t.integer :role
      t.references :card, null: true, foreign_key: true

      t.timestamps
    end
  end
end
