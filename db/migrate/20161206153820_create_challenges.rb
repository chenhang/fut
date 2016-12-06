class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.references :sbc
      t.string :sbc_url
      t.text :data, limit: 65535
      t.text :desc, limit: 65535
      t.text :rewards, limit: 65535
      t.text :requirement, limit: 65535
      t.string :url

      t.timestamps null: false
    end
  end
end
