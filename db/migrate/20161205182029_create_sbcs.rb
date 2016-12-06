class CreateSbcs < ActiveRecord::Migration
  def change
    create_table :sbcs do |t|
      t.string :name
      t.string :sbc_id
      t.text :data, limit: 65535
      t.text :squads, limit: 65535
      t.string :url

      t.timestamps null: false
    end
  end
end
