class Photo < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :avatar, AvatarUploader
end
