class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :likes, dependent: :destroy
  acts_as_taggable_on :prototypes
  acts_as_ordered_taggable_on :prototypes
  paginates_per 5
  accepts_nested_attributes_for :photos
  validates :title, :catchcopy, :concept, presence: true
end
