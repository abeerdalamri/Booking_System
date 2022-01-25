require "application_system_test_case"

class TicktsTest < ApplicationSystemTestCase
  setup do
    @tickt = tickts(:one)
  end

  test "visiting the index" do
    visit tickts_url
    assert_selector "h1", text: "Tickts"
  end

  test "should create tickt" do
    visit tickts_url
    click_on "New tickt"

    fill_in "Name", with: @tickt.name
    fill_in "Price", with: @tickt.price
    fill_in "Reference", with: @tickt.reference
    click_on "Create Tickt"

    assert_text "Tickt was successfully created"
    click_on "Back"
  end

  test "should update Tickt" do
    visit tickt_url(@tickt)
    click_on "Edit this tickt", match: :first

    fill_in "Name", with: @tickt.name
    fill_in "Price", with: @tickt.price
    fill_in "Reference", with: @tickt.reference
    click_on "Update Tickt"

    assert_text "Tickt was successfully updated"
    click_on "Back"
  end

  test "should destroy Tickt" do
    visit tickt_url(@tickt)
    click_on "Destroy this tickt", match: :first

    assert_text "Tickt was successfully destroyed"
  end
end
