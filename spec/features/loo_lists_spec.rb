require 'rails_helper'

feature "LooLists", :type => :feature do

  scenario "User visits home page" do
    # loos = []
    #
    # 3.times do
    #   loos << create(:loo)
    # end

    loo = FactoryGirl.create(:loo)

    visit root_path

    expect(page).to have_text(loo.name)

  end # end home page

end
