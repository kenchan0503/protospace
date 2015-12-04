class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :likes

  mount_uploader :avatar, AvatarUploader
end
