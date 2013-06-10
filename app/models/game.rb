class Game < ActiveRecord::Base
  validates_presence_of :player1_id
  validates_presence_of :player2_id
end
