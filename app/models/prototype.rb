class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :likes, dependent: :destroy

  paginates_per 5

  accepts_nested_attributes_for :photos
  validates :title, :catchcopy, :concept, presence: true
end
