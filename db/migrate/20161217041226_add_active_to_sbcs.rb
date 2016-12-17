class AddActiveToSbcs < ActiveRecord::Migration
  def change
    add_column :sbcs, :active, :boolean, default: true
  end
end
