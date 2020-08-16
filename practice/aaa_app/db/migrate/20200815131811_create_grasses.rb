class CreateGrasses < ActiveRecord::Migration[5.2]
  def change
    create_table :grasses do |t|
      t.string :title
      t.string :english_name
      t.string :date
      t.timestamps
    end
  end
end
