class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :status
      t.references :prototype

      t.timestamps null: false
    end

    add_index :photos, :prototype_id
  end
end
