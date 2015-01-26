# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rachel  = User.create(name: "Rachel")
jorge  = User.create(name: "Jorge")
jeff  = User.create(name: "Jeff")
ben  = User.create(name: "Ben")

picasso = Artist.create(name: "PABLO PICASSO", gender: "male", blurb: "A prolific and tireless innovator of art forms, Pablo Picasso impacted the course of 20th-century art with unparalleled magnitude.")
gris = Artist.create(name: "JUAN GRIS", gender: "male", blurb: "Originally trained in math and physics, Juan Gris moved to Paris in 1906, where he met Pablo Picasso and Georges Braque and became involved in the Cubist movement.")
braque = Artist.create(name: "GEORGES BRAQUE", gender: "male", blurb: "French painter, collagist and sculptor Georges Braque is, along with Pablo Picasso, renowned as the co-founder of Cubism, which revolutionized 20th-century painting.")
matisse = Artist.create(name: "HENRI MATISSE", gender: "male", blurb: "Henri Matisse was a leading figure of Fauvism and, along with Pablo Picasso, one of the most influential artists of the modern era.")
gleizes = Artist.create(name: "ALBERT GLEIZES", gender: "male", blurb: "A major exponent of Cubism, Albert Gleizes was driven by his social ideals to produce art that opposed the bourgeois canon.")


# Artwork.create(title: "Portrait of Art Dealer Ambroise Vollard", artist: picasso, date: "1910", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Daniel-Henry Kahnweiler", artist: picasso, date: "1910", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Violin with sheet of music", artist: picasso, date: "Autumn - 1912", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Woman", artist: gris, date: "1915-17", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Fantômas", artist: gris, date: "1915", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Violin and Candlestick", artist: braque, date: "1910", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Femme lisant (Woman Reading)", artist: braque, date: "1911", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Blue Nude II", artist: matisse, date: "1952", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Nu bleu, la grenouille (Blue Nude, the Frog", artist: matisse, date: "1952", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Painting, Object", artist: gleizes, date: "1921", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
# Artwork.create(title: "Dans le port [In port]", artist: gleizes, date: "1917", image: "http://static0.artsy.net/additional_images/516dfb9d9ad2d32b27000cdb/1/large.jpg")
