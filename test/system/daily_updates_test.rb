require "application_system_test_case"

class DailyUpdatesTest < ApplicationSystemTestCase
  setup do
    @daily_update = daily_updates(:one)
  end

  test "visiting the index" do
    visit daily_updates_url
    assert_selector "h1", text: "Daily Updates"
  end

  test "creating a Daily update" do
    visit daily_updates_url
    click_on "New Daily Update"

    fill_in "Body", with: @daily_update.body
    fill_in "Date", with: @daily_update.date
    fill_in "Title", with: @daily_update.title
    click_on "Create Daily update"

    assert_text "Daily update was successfully created"
    click_on "Back"
  end

  test "updating a Daily update" do
    visit daily_updates_url
    click_on "Edit", match: :first

    fill_in "Body", with: @daily_update.body
    fill_in "Date", with: @daily_update.date
    fill_in "Title", with: @daily_update.title
    click_on "Update Daily update"

    assert_text "Daily update was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily update" do
    visit daily_updates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily update was successfully destroyed"
  end
end
