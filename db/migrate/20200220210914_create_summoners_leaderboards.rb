class CreateSummonersLeaderboards < ActiveRecord::Migration[6.0]
  def change
    create_table :summoners_leaderboards do |t|
      t.integer :summoner_Id
      t.integer :leaderboard_id

      t.timestamps
    end
  end
end
