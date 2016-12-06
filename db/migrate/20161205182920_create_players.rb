class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :player_id
      t.string :original_player_id
      t.text :data, limit: 65535
      t.string :url
      
      t.timestamps null: false
    end
  end
end
