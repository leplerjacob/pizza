# require_relative '../response-recipe-details.json'
# require_relative '../response-recipe-list.json'
require 'json'

Ingredient.destroy_all
Recipe.destroy_all
Dish.destroy_all

json_recipes = File.read('./db/response-recipe-details.json')
# json_recipes = File.join(File.dirname(__FILE__), "./")
recipe_hash = JSON.parse(json_recipes)

count = 0
10.times do
    recipe_hash[count]["extendedIngredients"].map{|ingred| 
        exists = Ingredient.find_by(name: ingred["name"])
        if exists or ingred["aisle"] == "?"
        else
            new_ingred = Ingredient.create
            new_ingred.name = ingred["name"]
            new_ingred.aisle = ingred["aisle"]
            new_ingred.availability = true
            new_ingred.save
        end
    }

    dish = Dish.create
    dish.title = recipe_hash[count]["title"]
    dish.ready_in_minutes = recipe_hash[count]["readyInMinutes"]
    dish.image = recipe_hash[count]["image"]
    dish.summary = recipe_hash[count]["summary"]
    dish.sourceurl = recipe_hash[count]["sourceUrl"]
    dish.save
    count += 1
end

