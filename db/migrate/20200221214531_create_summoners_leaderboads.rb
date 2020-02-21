class CreateSummonersLeaderboads < ActiveRecord::Migration[6.0]
  def change
    create_table :summoners_leaderboads do |t|
      t.references :summoner, null: false, foreign_key: true
      t.references :leaderboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
