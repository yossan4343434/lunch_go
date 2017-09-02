class CreateStandbies < ActiveRecord::Migration[5.1]
  def change
    create_table :standbies do |t|
      t.references :user, foreign_key: true
      t.date :date

      t.timestamps
    end
    add_index :standbies, [:user_id, :date, :created_at]
  end
end
