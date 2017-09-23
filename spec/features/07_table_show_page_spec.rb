require 'rails_helper'

feature 'views the tables show page', %Q{
  As a player
  I want to be able to roll dice
} do

  scenario 'sees existing messages at the show page' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    kokiri = FactoryGirl.create(:table, game_master: navi)
    message = Message.create(user: navi, table: kokiri, body: "Watch out!")

    login_as(navi, :scope => :user)

    visit table_path(kokiri)

    expect(page).to have_content("#{navi.username}: #{message.body}")
  end
end
