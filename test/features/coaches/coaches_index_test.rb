require "test_helper"

feature "Coaches Index" do
  scenario "can see index of coaches" do
    # Given I am on the internet

    # When I go to the coaches index page
    visit coaches_path

    # Then I should see a list of the coaches
    page.text.must_include(coaches(:bus_one).id.to_s)
    page.text.must_include("Bus")
    page.text.must_include("Train")
  end
end
