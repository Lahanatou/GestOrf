require "application_system_test_case"

class OriginalparentsTest < ApplicationSystemTestCase
  setup do
    @originalparent = originalparents(:one)
  end

  test "visiting the index" do
    visit originalparents_url
    assert_selector "h1", text: "Originalparents"
  end

  test "creating a Originalparent" do
    visit originalparents_url
    click_on "New Originalparent"

    click_on "Create Originalparent"

    assert_text "Originalparent was successfully created"
    click_on "Back"
  end

  test "updating a Originalparent" do
    visit originalparents_url
    click_on "Edit", match: :first

    click_on "Update Originalparent"

    assert_text "Originalparent was successfully updated"
    click_on "Back"
  end

  test "destroying a Originalparent" do
    visit originalparents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Originalparent was successfully destroyed"
  end
end
