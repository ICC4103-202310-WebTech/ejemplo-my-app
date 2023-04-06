# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Author.create name: "Maximiliano"
Author.create name: "Carmen"
Author.create name: "Pedro"
Author.create name: "Juan"
author = Author.new name: "Joaquín"
author.save

Book.create title: "Enciclopedia", published_at: Time.now, isbn: "5465768574637", author: Author.find(1)
Book.create title: "Enciclopedia e", published_at: Time.now, isbn: "5465768574639", author: Author.find(1)
Book.create title: "El peor libro del mundo", published_at: Time.now, isbn: "5465760574637", author: Author.find(2)