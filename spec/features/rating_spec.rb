require 'rails_helper'

feature "Rating functionality", :type => :feature do

  scenario "Create a new loo" do

    #setup
    loo = FactoryGirl.create(:loo)
    visit loo_path(1)

    #exercise
    fill_in "rating[rating]", with: "Starbucks"
    fill_in "rating[comment]", with: "255 Bush St."
    click_button('Add')

    #verify
    expect(page).to have_text("Starbucks")

  end

end
