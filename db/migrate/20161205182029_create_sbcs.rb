class CreateSbcs < ActiveRecord::Migration
  def change
    create_table :sbcs do |t|
      t.string :name
      t.text :data, limit: 65535
      t.text :desc, limit: 65535
      t.text :expire, limit: 65535
      t.text :rewards, limit: 65535
      t.string :url

      t.timestamps null: false
    end
  end
end
