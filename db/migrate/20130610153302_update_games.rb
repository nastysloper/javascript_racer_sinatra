class UpdateGames < ActiveRecord::Migration
  def change
    add_column :games, :winner, :integer, :default => 0
  end
end
