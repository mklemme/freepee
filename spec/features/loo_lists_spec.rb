require 'rails_helper'

feature "LooLists", :type => :feature do

  scenario "User visits home page" do

    loo = FactoryGirl.create(:loo)

    visit root_path

    expect(page).to have_text(loo.name)
    expect(page).to have_text(loo.address)
    expect(page).to have_text(loo.rating)
    expect(page).to have_text(loo.key)
    expect(page).to have_text(loo.baby_changing)
    expect(page).to have_text(loo.cost)
    expect(page).to have_text(loo.handicapped)

  end # end home page

  scenario "User visits single loo page" do

    loo = FactoryGirl.create(:loo)

    visit single_loo_path(1)

    expect(page).to have_text(loo.name)
    expect(page).to have_text(loo.address)
    expect(page).to have_text(loo.rating)
    expect(page).to have_text(loo.key)
    expect(page).to have_text(loo.baby_changing)
    expect(page).to have_text(loo.cost)
    expect(page).to have_text(loo.handicapped)

  end # end home page

end
