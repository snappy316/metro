require "test_helper"

feature "Add a Driver" do
  scenario "creating a driver" do
    # Given I am on the drivers index page
    visit drivers_path

    # When I click on "New Driver" and fill out the form
    click_on("New Driver")
    fill_in("Name", with: "George")
    fill_in("Email", with: "george@test.com")
    fill_in("Preference", with: "afternoon vanpools")
    click_on("Create Driver")

    # Then I should see the new driver's info
    page.text.must_include("George")
    page.text.must_include("afternoon vanpools")
  end
end
