class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :like_count, default => 0
      t.references :prototype

      t.timestamps null: false
    end
    add_index :likes, :prototype

  end
end
