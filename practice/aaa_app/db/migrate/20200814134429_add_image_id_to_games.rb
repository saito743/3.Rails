class AddImageIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :image_id, :string
  end
end
