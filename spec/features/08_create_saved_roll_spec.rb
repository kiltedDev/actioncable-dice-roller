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
    expect(page).to have_css("input#saved_roll_name")
    expect(page).to have_css("select#saved_roll_dice_count")
    expect(page).to have_css("input#saved_roll_die_size_4")
    expect(page).to have_css("input#saved_roll_bonus")
  end

  scenario 'creates a roll from the edit user page' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)

    login_as(navi, :scope => :user)

    visit new_player_saved_roll_path(navi)

    fill_in "Bonus", with: "Pester Link"
    select(5, :from => "Dice Count")
    choose "saved_roll_die_size_6"
    fill_in "Bonus", with: 10

    click_button "Save Roll"

    expect(navi.saved_rolls.first.dice_count).to eq(5)
    expect(navi.saved_rolls.first.die_size).to eq(6)
    expect(navi.saved_rolls.first.bonus).to eq(10)
  end
end
