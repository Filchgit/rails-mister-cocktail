# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'
require 'json'
# doc = Nokogiri::HTML(URI.open('https://www.taste.com.au/recipes/collections?q=chocolate'))
# titles = []
# doc.search('.col-sm-7').each do |element|
#     titles << element.search('.title').text.strip
# end
# p titles
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
user["drinks"].each {|ingred| next_ingred= Ingredient.create(name:ingred["strIngredient1"])  }
