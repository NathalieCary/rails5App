# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

	Product.create(name: "Ring ~ Classic Diamond", description: "Sterling silver with 2ct diamond", price: 250, image_url: "https://images.unsplash.com/photo-1476965805533-564543966f62?dpr=1&auto=format&fit=crop&w=1199&h=679&q=80&cs=tinysrgb&crop=")

	Product.create(name: "Ring ~ Full Diamond", description: "Sterling silver with 2ct diamond", price: 270, image_url: "https://images.unsplash.com/photo-1483752427604-24b5678c470e?dpr=1&auto=format&fit=crop&w=1199&h=799&q=80&cs=tinysrgb&crop=")

	Product.create(name: "Ring ~ Princess Diamond", description: "Sterling silver with 2ct diamond", price: 300, image_url: "https://images.unsplash.com/photo-1484876632310-ddb3b48133cc?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=")

	Product.create(name: "Watch ~ Urban", description: "Charcoal face with leather straps", price: 280, image_url: "https://images.unsplash.com/photo-1492611772339-c581bbfb4dee?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=")

	Product.create(name: "Watch ~ Nude", description: "Clear face with chain", price: 290, image_url: "https://images.unsplash.com/photo-1434704504321-71a8bc15a685?dpr=1&auto=format&fit=crop&w=1500&h=1001&q=80&cs=tinysrgb&crop=")

	Product.create(name: "Watch ~ Timeless", description: "Pocket watch on chain", price: 210, image_url: "https://images.unsplash.com/photo-1493662042295-319935c83112?dpr=1&auto=format&fit=crop&w=1500&h=994&q=80&cs=tinysrgb&crop=")

	Product.create(name: "Necklace ~ Exquisite Flower", description: "Flowers with pearls", price: 350, image_url: "https://images.unsplash.com/photo-1459204195697-4de88edf3ab1?dpr=1&auto=format&fit=crop&w=1500&h=996&q=80&cs=tinysrgb&crop=")
