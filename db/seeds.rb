# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MOVIES = %w[Dune HarryPotter Lebowski].freeze

puts 'delete data...'
Assignment.delete_all
Task.delete_all
Category.delete_all

puts 'populate data...'
MOVIES.each do |movie|
  Category.create!(name: movie)
  puts "- #{movie}"
  FactoryBot.create_list(:task, 50, movie.underscore.to_sym)
end
