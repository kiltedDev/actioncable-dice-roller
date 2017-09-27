# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gemini = DiceSet.create(
  name: "Gemini",
  d4_url: "gemini-d4",
  d6_url: "gemini-d6",
  d8_url: "gemini-d8",
  d10_url: "gemini-d10",
  d100_url: "gemini-d100",
  d12_url: "gemini-d12",
  d20_url: "gemini-d20"
)
fire = DiceSet.create(
  name: "Fire",
  d4_url: "fire-d4",
  d6_url: "fire-d6",
  d8_url: "fire-d8",
  d10_url: "fire-d10",
  d100_url: "fire-d100",
  d12_url: "fire-d12",
  d20_url: "fire-d20"
)
water = DiceSet.create(
  name: "Water",
  d4_url: "water-d4",
  d6_url: "water-d6",
  d8_url: "water-d8",
  d10_url: "water-d10",
  d100_url: "water-d100",
  d12_url: "water-d12",
  d20_url: "water-d20"
)
earth = DiceSet.create(
  name: "Earth",
  d4_url: "earth-d4",
  d6_url: "earth-d6",
  d8_url: "earth-d8",
  d10_url: "earth-d10",
  d100_url: "earth-d100",
  d12_url: "earth-d12",
  d20_url: "earth-d20"
)
air = DiceSet.create(
  name: "Air",
  d4_url: "air-d4",
  d6_url: "air-d6",
  d8_url: "air-d8",
  d10_url: "air-d10",
  d100_url: "air-d100",
  d12_url: "air-d12",
  d20_url: "air-d20"
)
pank = DiceSet.create(
  name: "Pink",
  d4_url: "pank-d4",
  d6_url: "pank-d6",
  d8_url: "pank-d8",
  d10_url: "pank-d10",
  d100_url: "pank-d100",
  d12_url: "pank-d12",
  d20_url: "pank-d20"
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
