class RemoveTitleFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :title, :string
  end
end
