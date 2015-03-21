require "test_helper"

feature "Assignment Index" do
  scenario "assignment index shows assignments" do
    # Given I am on the internet

    # When I visit the assignment index
    visit assignments_path

    # Then I should see information about driver and coach assignments
    page.text.must_include("David")
    page.text.must_include(coaches(:bus_one).id.to_s)
    page.text.must_include("219")
  end
end
