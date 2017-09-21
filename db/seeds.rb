# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gemini = DiceSet.create(
name: "Gemini", d4_url: "https://www.awesomedice.com/image/cache/data/d4-gemini-black-purple-dice-215x215.jpg", d6_url: "https://www.awesomedice.com/image/cache/data/d6-gemini-black-purple-dice-215x215.jpg", d8_url: "https://www.awesomedice.com/image/cache/data/d8-gemini-black-purple-dice-215x215.jpg", d10_url: "https://www.awesomedice.com/image/cache/data/d10-gemini-black-purple-dice-215x215.jpg", d100_url: "https://www.awesomedice.com/image/cache/data/dpercentile-gemini-black-purple-dice-215x215.jpg", d12_url: "https://www.awesomedice.com/image/cache/data/d12-gemini-black-purple-dice-215x215.jpg", d20_url: "https://www.awesomedice.com/image/cache/data/d20-gemini-black-purple-dice-215x215.jpg"
)

navi = User.create(
username: "naviFairy",
email: "yelling@link.com",
password: "password"
)

link = User.create(
username: "serLink",
email: "looking@zelda.com",
password: "password"
)
