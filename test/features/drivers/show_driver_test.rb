require "test_helper"

feature "Show a Driver Profile" do
  scenario "can see a driver's profile" do
    # Given I am on the drivers index page
    visit drivers_path

    # When I click on a driver
    find("#" + drivers(:david).name).click_on("Show")

    # Then I should see their show page
    page.text.must_include("Name: David")
  end
end
