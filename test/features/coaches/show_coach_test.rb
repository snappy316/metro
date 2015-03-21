require "test_helper"

feature "Show a Coach" do
  scenario "can see a coach's profile" do
    # Given I am on the index page
    visit coaches_path

    # When I click on "Show" next to a coach
    find("#" + coaches(:bus_one).id.to_s).click_on("Show")

    # Then I should see the coach's profile
    page.text.must_include(coaches(:bus_one).id.to_s)
    page.text.must_include("BlueBird")
  end
end
