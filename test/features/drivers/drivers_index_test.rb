require "test_helper"

feature "Drivers Index" do
  scenario "can see all drivers" do
    # Given I am on the Internet

    # When I go to the drivers index
    visit drivers_path

    # Then I should see a list of drivers and their info
    page.text.must_include("David")
    page.text.must_include("Stephen")
  end
end
