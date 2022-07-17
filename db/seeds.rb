# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
w = Workshop.create([{ name: "Star Wars", description: "Lord of the Rings",
                        start_date: Date.today, end_date: Date.today + 7.days,
                        start_time: "10 AM", end_time: "10 PM", total_sits: 100,
                        remaining_sits:0, registration_fee: 1500 }])