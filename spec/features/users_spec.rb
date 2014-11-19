require 'rails_helper'

feature "Users", :type => :feature do
  
  scenario "User is registering" do
   
  #setup
  visit new_user_registration_path

  #exercise
  fill_in "user[email]", with: "me@email.com"
  fill_in "user[password]", with: "password"
  click_button('commit')

  #verify
  expect(page).to have_text()

  end 

end
