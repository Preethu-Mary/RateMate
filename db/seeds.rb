# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

businesses = Business.create([
    {
        name: "Preethu's Kitchen",
        image_url: "https://www.blinkco.io/wp-content/uploads/2021/06/Featured-Image.jpg"
    },
    {
        name: "Edin's Kitchen",
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4Zs1z26DKyhBYZFfiNUy0qPFRoslRa0IENQ&s"
    },
]
)

reviews = Review.create([
    {
        title:"Bad food",
        description: "I had a bad time",
        score: 1,
        business: businesses.first
    },
    {
        title:"Good food",
        description: "I had a Good time",
        score: 5,
        business: businesses.first
    },
]
)
