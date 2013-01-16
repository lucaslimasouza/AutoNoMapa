# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'
require Rails.root.join("db/categories_seed")
require Rails.root.join("db/br_populate")



BRPopulate.populate
CategoriesSeed.populate
