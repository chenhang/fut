class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :data, limit: 65535
      t.text :squads, limit: 65535
      t.string :url

      t.timestamps null: false
    end
  end
end
