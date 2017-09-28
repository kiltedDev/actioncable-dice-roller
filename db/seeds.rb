# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gemini = DiceSet.create(
  name: "Gemini",
  d4_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d4.png",
  d6_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d6.png",
  d8_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d8.png",
  d10_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d10.png",
  d100_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d100.png",
  d12_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d12.png",
  d20_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/gemini-d20.png"
)
fire = DiceSet.create(
  name: "Fire",
  d4_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d4.png",
  d6_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d6.png",
  d8_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d8.png",
  d10_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d10.png",
  d100_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d100.png",
  d12_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d12.png",
  d20_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/fire-d20.png"
)
water = DiceSet.create(
  name: "Water",
  d4_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d4.png",
  d6_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d6.png",
  d8_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d8.png",
  d10_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d10.png",
  d100_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d100.png",
  d12_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d12.png",
  d20_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/water-d20.png"
)
earth = DiceSet.create(
  name: "Earth",
  d4_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d4.png",
  d6_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d6.png",
  d8_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d8.png",
  d10_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d10.png",
  d100_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d100.png",
  d12_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d12.png",
  d20_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/earth-d20.png"
)
air = DiceSet.create(
  name: "Air",
  d4_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d4.png",
  d6_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d6.png",
  d8_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d8.png",
  d10_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d10.png",
  d100_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d100.png",
  d12_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d12.png",
  d20_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/air-d20.png"
)
pank = DiceSet.create(
  name: "Pink",
  d4_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d4.png",
  d6_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d6.png",
  d8_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d8.png",
  d10_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d10.png",
  d100_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d100.png",
  d12_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d12.png",
  d20_url: "https://s3.us-east-2.amazonaws.com/roll-for-init-production/pank-d20.png"
)

hariq = User.create(
username: "manAflame",
email: "burning@gmail.com",
password: "password"
)

game_master = User.create(
username: "GameMaster",
email: "running@gmail.com",
password: "password"
)

rappanAthuk = Table.create(
name: "Rappan Athuk"
)

home = Invitation.create(user: game_master, table: rappanAthuk, game_master: true)
home = Invitation.create(user: hariq, table: rappanAthuk)
