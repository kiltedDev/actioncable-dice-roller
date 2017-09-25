require 'rails_helper'

feature 'views a user profile', %Q{
  As a player
  I want to be able to look at my profile
    see saved rolls
    see active tables
} do

  scenario 'show user page has user info' do
    navi = FactoryGirl.create(:user)
    link = FactoryGirl.create(:user, :link)
    kokiri = FactoryGirl.create(:table, game_master: navi)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)

    login_as(link, :scope => :user)

    visit player_path(navi)

    expect(page).to have_content("Player: #{navi.username}")
    expect(page).to have_content("Saved Rolls")
    expect(page).to have_content(pester.name)
    expect(page).to have_content("6d8 plus 27")
    expect(page).to have_content(kokiri.name)
  end

  scenario 'show user page has a link to create a new saved roll' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)
    kokiri = FactoryGirl.create(:table, game_master: navi)

    login_as(navi, :scope => :user)

    visit player_path(navi)

    expect(page).to have_link("New Saved Roll")
  end

  scenario 'show user page has a link to edit or destroy rolls when looking at own page' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)

    login_as(navi, :scope => :user)

    visit player_path(navi)

    expect(page).to have_link("Edit")
    expect(page).to have_link("Destroy")

  end
end
