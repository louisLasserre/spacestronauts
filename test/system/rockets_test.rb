require "application_system_test_case"

class RocketsTest < ApplicationSystemTestCase
  setup do
    @rocket = rockets(:one)
  end

  test "visiting the index" do
    visit rockets_url
    assert_selector "h1", text: "Rockets"
  end

  test "should create rocket" do
    visit rockets_url
    click_on "New rocket"

    fill_in "Company", with: @rocket.company_id
    fill_in "Image", with: @rocket.image
    fill_in "Name", with: @rocket.name
    click_on "Create Rocket"

    assert_text "Rocket was successfully created"
    click_on "Back"
  end

  test "should update Rocket" do
    visit rocket_url(@rocket)
    click_on "Edit this rocket", match: :first

    fill_in "Company", with: @rocket.company_id
    fill_in "Image", with: @rocket.image
    fill_in "Name", with: @rocket.name
    click_on "Update Rocket"

    assert_text "Rocket was successfully updated"
    click_on "Back"
  end

  test "should destroy Rocket" do
    visit rocket_url(@rocket)
    click_on "Destroy this rocket", match: :first

    assert_text "Rocket was successfully destroyed"
  end
end
