class User < ActiveRecord::Base
  has_many :prototypes
  has_many :comments
  has_many :photos
end
