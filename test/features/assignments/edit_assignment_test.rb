require "test_helper"

feature "Edit an Assignment" do
  scenario "can edit an existing assignment" do
    # Given I am on an assignment page
    visit edit_assignment_path(assignments(:one).id)

    # When I click "Edit" and fill out the form
    fill_in("Route", with: 218)
    click_on("Update Assignment")

    # Then I see the updated assignment information
    page.text.must_include("218")
  end
end
