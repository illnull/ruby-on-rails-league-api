class CreateMasteries < ActiveRecord::Migration[6.0]
  def change
    create_table :masteries do |t|
      t.integer :championId
      t.integer :championLevel
      t.integer :championPoints
      t.references :summoner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
