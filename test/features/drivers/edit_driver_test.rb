require "test_helper"

feature "Edit a Driver" do
  scenario "can edit a driver's info" do
    # Given I am on a driver's profile page
    visit driver_path(drivers(:david).id)

    # When I click "Edit" and fill out the form
    click_on("Edit")
    fill_in("Email", with: "test@test.com")
    fill_in("Preference", with: "afternoon vanpools")
    click_on("Update Driver")

    # Then I should see the updated info
    page.text.must_include("test@test.com")
    page.text.must_include("afternoon vanpools")
  end
end
