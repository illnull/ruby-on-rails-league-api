class CreateSummoners < ActiveRecord::Migration[6.0]
  def change
    create_table :summoners do |t|
      t.string :summonerId
      t.string :accountId
      t.string :summonerName
      t.integer :summonerLevel
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
