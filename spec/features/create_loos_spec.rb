require 'rails_helper'

feature "CreateLoos", :type => :feature do
  scenario "User is registering" do
   
  #setup
  visit new_user_registration_path

  #exercise
  fill_in "user[email]", with: "me@email.com"
  fill_in "user[password]", with: "password"
  click_button('Register')

  #verify
  expect(page).to have_text("Welcome! You have signed up successfully. me@email.com")
  # expect(session[:user_id]).to_not be_nil

  end 
end
