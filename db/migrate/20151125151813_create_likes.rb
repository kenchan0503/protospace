class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :prototype_id
      t.integer :like_count

      t.timestamps null: false
    end
  end
end
