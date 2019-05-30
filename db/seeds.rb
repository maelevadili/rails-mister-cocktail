# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Ingredient.destroy_all

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'rhum')
# Ingredient.create(name: 'cane sugar')
# Ingredient.create(name: 'vodka')
# Ingredient.create(name: 'tomato juice')
# Ingredient.create(name: 'worcestershire sauce')
# Ingredient.create(name: 'tabasco')
# Ingredient.create(name: 'salt')
# Ingredient.create(name: 'honey')
# Ingredient.create(name: 'pineapple juice')
# Ingredient.create(name: 'coconut milk')
# Ingredient.create(name: 'cinnamon syrup')
Ingredient.create(name: 'grapefruit juice')

# puts 'Creating 10 fake ingredients...'
# 11.times do
#   ingredient = Ingredient.new(
#     name: Faker::Food.fruits,
#   )
#   ingredient.save!
# end
# puts 'Finished!'

# puts 'Creating 3 fake cocktails...'
# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Bloody Mary')
# Cocktail.create(name: 'Ti punch')
# puts 'Finished!'
