class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.references :sbc
      t.references :challenge
      t.string :challenge_url
      t.string :squad_id
      t.text :original_data, limit: 65535
      t.text :player_data, limit: 65535
      t.text :position_info, limit: 65535
      t.string :url
      
      t.timestamps null: false
    end
  end
end
