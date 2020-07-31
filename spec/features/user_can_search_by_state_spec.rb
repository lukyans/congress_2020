require 'rails_helper'

feature "user can search for house members" do

  scenario "user submits valid state name" do
    # As a user
    # When I visit "/"
    visit '/'

    select "Colorado", from: :state
    # And I select "Colorado" from the dropdown
    click_on "Locate Members of the House"
    # And I click on "Locate Members from the House"
    expect(current_path).to eq(root_path)
    # Then my path should be "/search" with "state=CO" in the parameters
    expect(page).to have_content("7 Results")
    # And I should see a message "7 Results"
    expect(page).to have_css(".current_state_member", count: 7)
    # And I should see a list of 7 the members of the house for Colorado

    within(first(".current_state_member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".gender")
      expect(page).to have_css(".party")
      expect(page).to have_css(".facebook")
      expect(page).to have_css(".youtube")
      expect(page).to have_css(".seniority")
      expect(page).to have_css(".next_election")
      expect(page).to have_css(".api_uri")
      expect(page).to have_css(".district")
      expect(page).to have_css(".at_large")
    end
  end
end
