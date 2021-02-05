class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :ingredient_id
      t.integer :dish_id
      t.float :amount
      t.string :unit
      t.string :meta
      t.string :original

      t.timestamps
    end
  end
end
