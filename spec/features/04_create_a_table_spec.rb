require 'rails_helper'

feature 'user creates a table', %Q{
  As a GM
  I want to be able to create a table for my friends to play at
} do

  scenario 'a GM successfully creates a table' do
    navi = FactoryGirl.create(:user)
    login_as(navi, :scope => :user)

    visit root_path

    click_link "New Table"

    fill_in "Name", with: "Rappan Athuk"

    click_button "Create Table"

    expect(page).to have_content("Table was successfully created.")
  end

  scenario 'a GM fails to name a table' do
    navi = FactoryGirl.create(:user)
    login_as(navi, :scope => :user)

    visit new_table_path

    click_button "Create Table"

    expect(page).to have_content("Name can't be blank")
  end

  scenario "table creation leads to invitation page" do
    navi = FactoryGirl.create(:user)
    link = FactoryGirl.create(:user, :link)
    login_as(navi, :scope => :user)

    visit root_path

    click_link "New Table"

    fill_in "Name", with: "Rappan Athuk"

    click_button "Create Table"

    expect(page).to have_content(link.username)
  end
end
