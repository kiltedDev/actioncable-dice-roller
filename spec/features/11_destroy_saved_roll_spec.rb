require 'rails_helper'

feature 'destroys a saved roll', %Q{
  As a player
  I want to be able to remove a roll in case I get turned into a newt
} do

  scenario 'show user page has a link to destrou a new saved roll' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)

    login_as(navi, :scope => :user)

    visit player_path(navi)



    expect(page).to have_link("Destroy")
  end

  scenario 'updates a roll from the show user page' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)

    login_as(navi, :scope => :user)

    visit player_path(navi)

    click_link "Destroy"

    expect(navi.saved_rolls.count).to eq(0)
  end
end
