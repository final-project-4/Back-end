# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories:
Product.destroy_all
Category.destroy_all
Review.destroy_all
User.destroy_all

books = Category.create({
    name: "Books",
})


electronics = Category.create({
    name: "Electronics",
})

beauty = Category.create({
    name: "Beautys",
})

toys_and_games = Category.create({
    name: "Toys & Games ",
})

luggage = Category.create({
    name: "Luggage",
})



# products:
who_moved_my_cheese = Product.create({
 name: "who moved my cheese",
 brand: "Spencer Johnson, Kenneth Blanchard",
 description: " I would like to buy this book online, would it be possible to suggest few websites that delivers to riyadh. And what do think about it?  ",
 expected_price: 30,
 color: "white",
 model_year: 1998,
 category: books
})

mac_book_pro = Product.create({
  name: "mac book pro",
  brand: "Apple",
 description: " I would like to buy a new laptop, and i though of getting macbook pro",
 expected_price: 8000,
 color: "Silver",
 model_year: 2018,
 category: electronics
})

phone = Product.create({
    name: "phone",
    brand: "Samsung",
 description: " I would like to buy a new phone from samsung, what would you suggest?",
 expected_price: 2000,
 color: "Black",
 model_year: 2018,
 category: electronics
})

drone = Product.create({
    name: "drone",
    brand: "DJI",
 description: " I would like to get a new drone that can help me record an outdoors event. Any suggestions?",
 expected_price: 2200,
 color: "Black",
 model_year: 2017,
 category: electronics
})


speakers = Product.create({
    name: "speakers",
    brand: "Philips",
 description: " I'm planning on geting a new speakers from philips. I'm looking for a medium sized speakers.",
 expected_price: 1300,
 color: "Silver",
 model_year: 2019,
 category: electronics
})


the_hunchback_of_notre_dame = Product.create({
  name: "the hunchback of notre dame",
 brand: " Tab Murphy,Irene Mecchi, Bob Tzudiker,Noni White, Jonathan Roberts",
 description: " I would like to buy this book online, would it be possible to suggest few websites that delivers to riyadh. And what do think about it? ",
 expected_price: 90,
 color: "white",
 model_year: 1996,
 category: books
})


harry_potter_and_the_goblet_of_fire = Product.create({
  name: "harry potter and the goblet of fire",
 brand: "J.K. Rowling",
 description: " I would like to buy this book online, would it be possible to suggest few websites that delivers to riyadh. And what do think about it? ",
 expected_price: 80,
 color: "black",
 model_year: 1996,
 category: books
})



it_luggage = Product.create({
  name: "luggage",
 brand: "it luggage",
 description: "I'm looking for a travilling luggage from it, i want to be able to carry it with me in the airplane ",
 expected_price: 160,
 color: "blue",
 model_year: 2018,
 category: luggage
})


luggage = Product.create({
  name: "luggage",
 brand: "luggage",
 description: "I ",
 expected_price: 0,
 color: "blue",
 model_year: 0,
 category: luggage
})

# users 

trevor = User.create({
    name: "Trevor",
    email: "trevorhatespuppies4@hotmail.com",
    password: "nachos",
    is_admin: false
})

# reviews

Alex = Review.create({
    comment: "Hello guys philips BT50 costs 1100₹, which within the budget. I have this product for almost 6 months and I feel this is quite good product to go for. However, i'm not liking the battery, it only stays fpr up to 4 hours max. ",
    raiting: 3.5,
    user: trevor,
    product: speakers
})

Ahmed = Review.create({
    comment: "The MacBook Pro 2018 15-inch is a powerful pro notebook with a fantastic design, and the touch Bar is improving. I'm loving it ",
    raiting: 5,
    user: trevor,
    product: mac_book_pro
})


Sara = Review.create({
    comment: "you’ll adore the 15-inch MacBook Pro 2018, it's amazing there are a lot of features that you'll enjoy. The height when closed is 1.55cm(0.61 inches), and it weighs just 1.83kg (4.02 pounds).",
    raiting: 5,
    user: trevor,
    product: mac_book_pro 
})


Mohammed = Review.create({
    comment: "I really recommend this book to everyone, its very inspiring!.",
    raiting: 5,
    user: trevor,
    product: who_moved_my_cheese 
})


maha = Review.create({
    comment: "I saw this in a shop called alsannat in king fahad road",
    raiting: 5,
    user: trevor,
    product: it_luggage
})






