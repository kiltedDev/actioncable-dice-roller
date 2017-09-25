require 'rails_helper'

feature 'edits a saved roll', %Q{
  As a player
  I want to be able to edit a roll in case I level up or find sweet loot
} do

  scenario 'show user page has a link to create a new saved roll' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)

    login_as(navi, :scope => :user)

    visit player_path(navi)

    click_link "Edit"

    expect(page).to have_content("Edit #{pester.name}")
    page.should have_no_selector(:xpath, "//input[@type='#{text}' and @name='saved_roll[name]']")
    expect(page).to have_css("select#saved_roll_dice_count")
    expect(page).to have_css("input#saved_roll_die_size_4")
    expect(page).to have_css("input#saved_roll_bonus")
  end

  scenario 'updates a roll from the show user page' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    pester = FactoryGirl.create(:saved_roll, user_id: navi.id)

    login_as(navi, :scope => :user)

    visit edit_player_saved_roll_path(player_id: navi.id, id: pester.id)

    select(6, :from => "Dice Count")
    choose "saved_roll_die_size_6"
    fill_in "Bonus", with: 12

    click_button "Update Roll"

    expect(navi.saved_rolls.first.dice_count).to eq(5)
    expect(navi.saved_rolls.first.die_size).to eq(6)
    expect(navi.saved_rolls.first.bonus).to eq(10)
    expect(page).to have_content("6d6 plus 12")
  end
end
