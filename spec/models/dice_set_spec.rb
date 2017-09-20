require 'rails_helper'

RSpec.describe DiceSet, type: :model do
  context "#dice_set" do
    it { should have_valid(:name).when('Azathoth', 'num112358') }
    it { should_not have_valid(:name).when(nil, '') }

    it { should have_valid(:d4_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/d4-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d4_url).when(nil, '') }

    it { should have_valid(:d6_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/d6-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d6_url).when(nil, '') }

    it { should have_valid(:d8_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/d8-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d8_url).when(nil, '') }

    it { should have_valid(:d10_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/d10-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d10_url).when(nil, '') }

    it { should have_valid(:d100_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/dpercentile-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d100_url).when(nil, '') }

    it { should have_valid(:d12_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/d12-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d12_url).when(nil, '') }

    it { should have_valid(:d20_url).when('www.google.com', 'www.dicesets.org', "https://www.awesomedice.com/image/cache/data/d20-gemini-black-purple-dice-215x215.jpg") }
    it { should_not have_valid(:d20_url).when(nil, '') }


  end


end
