# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Terminal.delete_all

Terminal.create!([
  {id: 1, name: "TerminalOne", description: "long", attrs: "domestic:true, airlines:multiple"},
  {id: 2, name: "TerminalTwo", description: "short", attrs: "regional-airport-ranking:one"},
  {id: 3, name: "TerminalThree", description: "narrow", attrs: "construction-year:1990"},
  {id: 4, name: "TerminalFour", description: "wide", attrs: "heli-shuttles:2"},
  {id: 5, name: "TerminalFive", description: "spacious", attrs: "international:true, airlines:multiple"},
  {id: 6, name: "TerminalSix", description: "crowded", attrs: "domestic:true, airlines:single"}
])
