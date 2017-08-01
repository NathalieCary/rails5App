# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Product.exists?

	Product.create(name: "Ring ~ Classic Diamond", description: "Sterling silver with 2ct diamond", price: "250.00", image_url: "https://images.unsplash.com/photo-1476965805533-564543966f62?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=wu-yi-152050.jpg&s=94fde8815c0f16fbcd0445d8f0d23c14,")

	Product.create(name: "Ring ~ Full Diamond", description: "Sterling silver with 2ct diamond", price: "270.00", image_url: "https://images.unsplash.com/photo-1483752427604-24b5678c470e?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=jeremy-bishop-186006.jpg&s=23fa836240dacd8c03c59ba0e920512a,")

	Product.create(name: "Ring ~ Princess Diamond", description: "Sterling silver with 2ct diamond", price: "300.00", image_url: "https://images.unsplash.com/photo-1484876632310-ddb3b48133cc?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=shelby-deeter-193590.jpg&s=4479d1dc40ce337453723ec8b57b012a,")

	Product.create(name: "Watch ~ Urban", description: "Charcoal face with leather straps", price: "280.00", image_url: "https://images.unsplash.com/photo-1492611772339-c581bbfb4dee?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=eric-didier-242593.jpg&s=eede4ab27e4064253ffcc1df06565876,")

	Product.create(name: "Watch ~ Nude", description: "Clear face with chain", price: "290.00", image_url: "https://images.unsplash.com/photo-1434704504321-71a8bc15a685?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=ken-lawrence-22592.jpg&s=e9d9efa3c5014e5c9d92c3f8a797ac03,")

	Product.create(name: "Watch ~ Timeless", description: "Pocket watch on chain", price: "210.00", image_url: "https://images.unsplash.com/photo-1493662042295-319935c83112?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=elisha-terada-249873.jpg&s=0bf900b85c5916eaac03294c6f67608f,")

	Product.create(name: "Necklace ~ Exquisite Flower", description: "Flowers with pearls", price: "350.00", image_url: "https://images.unsplash.com/photo-1459204195697-4de88edf3ab1?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=scott-webb-78398.jpg&s=2f12a0c25dc6eb2c2072dda76a2e391a,")
end