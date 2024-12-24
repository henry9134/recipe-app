# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Users
user1 = User.create(name: "Alice", email: "alice@example.com", password: "password")

# Create Recipes
recipe1 = Recipe.create(title: "Spaghetti Carbonara", description: "Classic Italian dish", cooking_time: 30, difficulty_level: "Medium", user: user1)

# Add Ingredients
Ingredient.create(recipe: recipe1, ingredient_name: "Spaghetti", quantity: "200g")
Ingredient.create(recipe: recipe1, ingredient_name: "Eggs", quantity: "2")
Ingredient.create(recipe: recipe1, ingredient_name: "Bacon", quantity: "100g")

# Add Ratings
Rating.create(user: user1, recipe: recipe1, rating: 5)
