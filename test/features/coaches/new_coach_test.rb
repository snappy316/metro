require "test_helper"

feature "Create a New Coach" do
  scenario "can create a new coach" do
    # Given I am on the coaches index page
    visit coaches_path

    # When I click on "New Coach" and fill out the form
    click_on("New Coach")
    fill_in("Class", with: "Train")
    fill_in("Model", with: "Japanese")
    fill_in("Year", with: "2013")
    click_on("Create Coach")

    # Then I should see the info
    page.text.must_include("Train")
    page.text.must_include("Japanese")
  end
end
