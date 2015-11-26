class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :prototype_id
      t.text :text
      t.references :user
      t.references :prototype

      t.timestamps null: false
    end

    add_index :comments, [:user, :prototype]
  end
end
