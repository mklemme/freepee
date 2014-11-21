require 'rails_helper'

feature "LooLists", :type => :feature do

  scenario "User visits loo list page" do

    loo = FactoryGirl.create(:loo)

    visit loos_path

    expect(page).to have_text(loo.name)
    expect(page).to have_text(loo.address)
    expect(page).to have_text(loo.rating)
    expect(page).to have_text(loo.key)
    expect(page).to have_text(loo.baby_changing)
    expect(page).to have_text(loo.cost)
    expect(page).to have_text(loo.handicapped)

<<<<<<< HEAD
  end # end index page
=======
  end # end loo list page
>>>>>>> 2324331b19f822cdd4c16d438e5985c7b883abd5

  scenario "User visits single loo page" do

    loo = FactoryGirl.create(:loo)
    rating = FactoryGirl.create(:rating)

    visit loo_path(1)

    expect(page).to have_text(loo.name)
    expect(page).to have_text(loo.address)
    expect(page).to have_text(loo.rating)
    expect(page).to have_text(loo.key)
    expect(page).to have_text(loo.baby_changing)
    expect(page).to have_text(loo.cost)
    expect(page).to have_text(loo.handicapped)
    expect(page).to have_text(loo.stall)
    expect(page).to have_text(loo.shower)
    expect(page).to have_text(loo.toiletries)
    expect(page).to have_text(loo.venue)

<<<<<<< HEAD
  end # end show page

=======
    expect(page).to have_text(rating.rating)
    expect(page).to have_text(rating.comment)

  end # end single loo page

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
>>>>>>> 2324331b19f822cdd4c16d438e5985c7b883abd5

end











