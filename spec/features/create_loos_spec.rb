require 'rails_helper'

feature "CreateLoos", :type => :feature do
  scenario "visit new loo page" do
   
  #setup
  visit new_loo_path

  #exercise
  # fill_in "name[email]", with: "me@email.com"
  # fill_in "user[password]", with: "password"
  # click_button('Register')

  #verify
  expect(page).to have_text("Hello world")
  # expect(session[:user_id]).to_not be_nil

  end 
end
