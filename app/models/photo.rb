class Photo < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :url, PhotoUploader
  validates :url, presence: true
  enum status: [:main, :sub]
end
