require 'rails_helper'

feature "CreateLoos", :type => :feature do
  scenario "Create a new loo" do

  #setup
  visit new_loo_path

  #exercise
  fill_in "loo[name]", with: "Starbucks"
  fill_in "loo[address]", with: "255 Bush St."
  click_button('Add')

  #verify
  expect(page).to have_text("Starbucks")

  end
end
