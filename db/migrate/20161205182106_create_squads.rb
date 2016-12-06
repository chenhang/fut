class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.references :sbc
      t.references :challenge
      t.string :squad_url
      t.text :original_data, limit: 65535
      t.text :players, limit: 65535
      t.text :info, limit: 65535
      t.string :url
      
      t.timestamps null: false
    end
  end
end
