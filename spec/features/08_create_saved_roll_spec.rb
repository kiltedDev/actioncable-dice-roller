require 'rails_helper'

feature 'creates a saved roll', %Q{
  As a player
  I want to be able to save a roll in case I use it often
    That roll will show up on the dice-box form
} do

  scenario 'edit user page has a link to create a new saved roll' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)

    login_as(navi, :scope => :user)

    visit edit_user_registration_path(navi)

    click_link "New Saved Roll"

    expect(page).to have_content("New Saved Roll")
    expect(page).to have_css("input#dice_count")
    expect(page).to have_css("input#die_size")
    expect(page).to have_css("input#bonus")
  end

  scenario 'creates a roll from the edit user page' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)

    login_as(navi, :scope => :user)

    visit edit_user_registration_path(navi)

    click_link "New Saved Roll"


  end
end
