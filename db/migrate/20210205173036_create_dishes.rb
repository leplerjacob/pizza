class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :title
      t.integer :ready_in_minutes
      t.string :image
      t.text :summary
      t.string :sourceurl

      t.timestamps
    end
  end
end
