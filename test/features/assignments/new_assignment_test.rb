require "test_helper"

feature "New Assignment" do
  scenario "can create a new assignment" do
    # Given I am on the assignment index page
    visit assignments_path

    # When I click on "New Assignment" and fill out the form
    click_on("New Assignment")
    select("David", from: "Driver")
    select(coaches(:bus_one).id.to_s, from: "Coach")
    fill_in("Route", with: 216)
    click_on("Create Assignment")

    # Then I should see the assignment information
    page.text.must_include("David")
    page.text.must_include(coaches(:bus_one).id.to_s)
    page.text.must_include("216")
  end
end
