class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :key
      t.integer :user_id

      t.timestamps
    end
  end
end
