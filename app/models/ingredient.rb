class Ingredient < ApplicationRecord
    has_many :recipes
    has_many :dish, through: :recipes
end
