require "test_helper"

feature "Edit a Coach" do
  scenario "can edit a coach" do
    # Given I have an existing coach

    # When I go the edit path, and fill out the form
    visit edit_coach_path(coaches(:bus_one).id)
    fill_in("Year", with: 2014)
    click_on("Update Coach")

    # Then the updated information should appear
    page.text.must_include("2014")
  end
end
