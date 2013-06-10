class Player < ActiveRecord::Base
  has_many :games
  validates_uniqueness_of :initials
end
