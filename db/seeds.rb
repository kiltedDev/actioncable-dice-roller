# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gemini = DiceSet.create(
  name: "Gemini",
  d4_url: "https://www.awesomedice.com/image/cache/data/d4-gemini-black-purple-dice-215x215.jpg",
  d6_url: "https://www.awesomedice.com/image/cache/data/d6-gemini-black-purple-dice-215x215.jpg",
  d8_url: "https://www.awesomedice.com/image/cache/data/d8-gemini-black-purple-dice-215x215.jpg",
  d10_url: "https://www.awesomedice.com/image/cache/data/d10-gemini-black-purple-dice-215x215.jpg",
  d100_url: "https://www.awesomedice.com/image/cache/data/dpercentile-gemini-black-purple-dice-215x215.jpg",
  d12_url: "https://www.awesomedice.com/image/cache/data/d12-gemini-black-purple-dice-215x215.jpg",
  d20_url: "https://www.awesomedice.com/image/cache/data/d20-gemini-black-purple-dice-215x215.jpg"
)
fire = DiceSet.create(
  name: "Fire",
  d4_url: "https://www.awesomedice.com/image/cache/data/Singles/d4/d4-scarab-scarlet-600x600.jpg",
  d6_url: "https://www.awesomedice.com/image/cache/data/Singles/d6/d6-scarab-scarlet-600x600.jpg",
  d8_url: "https://www.awesomedice.com/image/cache/data/Singles/d8/d8-scarab-scarlet-600x600.jpg",
  d10_url: "https://www.awesomedice.com/image/cache/data/Singles/d10/d10-scarab-scarlet-600x600.jpg",
  d100_url: "https://www.awesomedice.com/image/cache/data/Singles/d10%20Percent/percentile-scarab-scarlet-350x350.jpg",
  d12_url: "https://www.awesomedice.com/image/cache/data/Singles/d12/d12-scarab-scarlet-600x600.jpg",
  d20_url: "https://www.awesomedice.com/image/cache/data/Singles/d20/d20-scarab-scarlet-600x600.jpg"
)
water = DiceSet.create(
  name: "Water",
  d4_url: "https://www.awesomedice.com/image/cache/data/d4-gemini-black-shell-dice-215x215.jpg",
  d6_url: "https://www.awesomedice.com/image/cache/data/d6-gemini-black-shell-dice-215x215.jpg",
  d8_url: "https://www.awesomedice.com/image/cache/data/d8-gemini-black-shell-dice2-215x215.jpg",
  d10_url: "https://www.awesomedice.com/image/cache/data/d10-gemini-black-shell-dice-215x215.jpg",
  d100_url: "https://www.awesomedice.com/image/cache/data/d10p-gemini-black-shell-dice-215x215.jpg",
  d12_url: "https://www.awesomedice.com/image/cache/data/d12-gemini-black-shell-dice-215x215.jpg",
  d20_url: "https://www.awesomedice.com/image/cache/data/d20-gemini-black-shell-dice-215x215.jpg"
)
earth = DiceSet.create(
  name: "Earth",
  d4_url: "https://www.awesomedice.com/image/cache/data/d4-speckled-golden-recon-dice-215x215.jpg",
  d6_url: "https://www.awesomedice.com/image/cache/data/d6-speckled-golden-recon-dice-215x215.jpg",
  d8_url: "https://www.awesomedice.com/image/cache/data/d8-speckled-golden-recon-dice-215x215.jpg",
  d10_url: "https://www.awesomedice.com/image/cache/data/d10-speckled-golden-recon-215x215.jpg",
  d100_url: "https://www.awesomedice.com/image/cache/data/dpercentile-speckled-golden-recon-dice-215x215.jpg",
  d12_url: "https://www.awesomedice.com/image/cache/data/d12-speckled-golden-recon-dice-215x215.jpg",
  d20_url: "https://www.awesomedice.com/image/cache/data/d20-speckled-golden-recon-dice-215x215.jpg"
)
air = DiceSet.create(
  name: "Air",
  d4_url: "https://www.awesomedice.com/image/cache/data/Singles/d4/d4-gemini-copper-steel-215x215.jpg",
  d6_url: "https://www.awesomedice.com/image/cache/data/Singles/d6/d6-gemini-copper-steel-215x215.jpg",
  d8_url: "https://www.awesomedice.com/image/cache/data/Singles/d8/d8-gemini-copper-steel-215x215.jpg",
  d10_url: "https://www.awesomedice.com/image/cache/data/Singles/d10/d10-gemini-copper-steel-215x215.jpg",
  d100_url: "https://www.awesomedice.com/image/cache/data/Singles/d10%20Percent/percentile-gemini-copper-steel-215x215.jpg",
  d12_url: "https://www.awesomedice.com/image/cache/data/Singles/d12/d12-copper-steel-215x215.jpg",
  d20_url: "https://www.awesomedice.com/image/cache/data/Singles/d20/d20-gemini-copper-steel-215x215.jpg"
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

kokiri = Table.create(
name: "Kokiri"
)

home = Invitation.create(user: navi, table: kokiri, game_master: true)
