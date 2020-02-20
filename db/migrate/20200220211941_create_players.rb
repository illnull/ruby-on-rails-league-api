class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
