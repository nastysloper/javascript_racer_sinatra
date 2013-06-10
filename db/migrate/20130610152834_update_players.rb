class UpdatePlayers < ActiveRecord::Migration
  def change
    add_index(:players, :initials, :unique => true)
  end
end
