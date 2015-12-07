class RemoveAvatarFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :avatar, :string
  end
end
