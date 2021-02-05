class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :aisle
      t.boolean :availability

      t.timestamps
    end
  end
end
