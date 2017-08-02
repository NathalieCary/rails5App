# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Product.exists?

	Product.create(name: "Ring ~ Classic Diamond", description: "Sterling silver with 2ct diamond", price: 250.00, image_url: "https://unsplash.com/search/ring?photo=1eLUs_frRpU")

	Product.create(name: "Ring ~ Full Diamond", description: "Sterling silver with 2ct diamond", price: 270.00, image_url: "https://unsplash.com/search/ring?photo=M3LLiBdVX7k")

	Product.create(name: "Ring ~ Princess Diamond", description: "Sterling silver with 2ct diamond", price: 300.00, image_url: "https://unsplash.com/search/ring?photo=-XlBjdtRqK8")

	Product.create(name: "Watch ~ Urban", description: "Charcoal face with leather straps", price: 280.00, image_url: "https://unsplash.com/search/watches?photo=ow0ekez_QvM")

	Product.create(name: "Watch ~ Nude", description: "Clear face with chain", price: 290.00, image_url: "https://unsplash.com/search/watches?photo=YJIH8vK0qFc")

	Product.create(name: "Watch ~ Timeless", description: "Pocket watch on chain", price: 210.00, image_url: "https://unsplash.com/search/watches?photo=LOAqoMw1vow")

	Product.create(name: "Necklace ~ Exquisite Flower", description: "Flowers with pearls", price: 350.00, image_url: "https://unsplash.com/search/necklace?photo=_7G_R_IWt1U")
end