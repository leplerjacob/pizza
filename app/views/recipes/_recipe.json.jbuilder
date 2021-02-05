json.extract! recipe, :id, :ingredient_id, :dish_id, :amount, :unit, :meta, :original, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
