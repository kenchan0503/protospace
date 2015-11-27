class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :prototype_id
      t.integer :status
      t.references :prototype

      t.timestamps null: false
    end

    add_index :photos, :prototype
  end
end
