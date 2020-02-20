class CreateLeaderboards < ActiveRecord::Migration[6.0]
  def change
    create_table :leaderboards do |t|
      t.string :queueType
      t.integer :wins
      t.integer :losses
      t.integer :leaguePoints

      t.timestamps
    end
  end
end
