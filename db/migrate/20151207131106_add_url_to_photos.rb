class AddUrlToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :url, :text
  end
end
