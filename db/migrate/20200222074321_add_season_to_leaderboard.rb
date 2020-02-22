class AddSeasonToLeaderboard < ActiveRecord::Migration[6.0]
  def change
    add_column :leaderboards, :season, :integer
  end
end
