class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :date
      t.integer :home_id
      t.integer :away_id
      t.integer :referee_id

      t.timestamps
    end
    add_index :matches, :date
    add_index :matches, :home_id
    add_index :matches, :away_id
    add_index :matches, :referee_id
  end
end
