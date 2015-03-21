require "test_helper"

feature "Show Assignment" do
  scenario "can view an individual assignment" do
    # Given I am on the assignment index page
    visit assignments_path

    # When I show an indivual assingment
    find("#" + assignments(:one).id.to_s).click_on("Show")

    # Then I can see details of the assignment
    page.text.must_include("David")
    page.text.must_include("train two")
    page.text.must_include("Central Link")
  end
end
