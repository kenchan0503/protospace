class Photo < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :url, PhotoUploader
  validates :url, presence: true
end
