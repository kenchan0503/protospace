class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :group_name
      t.text :profile
      t.string :works

      t.timestamps null: false
    end
  end
end
