require "application_system_test_case"

class HostparentsTest < ApplicationSystemTestCase
  setup do
    @hostparent = hostparents(:one)
  end

  test "visiting the index" do
    visit hostparents_url
    assert_selector "h1", text: "Hostparents"
  end

  test "creating a Hostparent" do
    visit hostparents_url
    click_on "New Hostparent"

    click_on "Create Hostparent"

    assert_text "Hostparent was successfully created"
    click_on "Back"
  end

  test "updating a Hostparent" do
    visit hostparents_url
    click_on "Edit", match: :first

    click_on "Update Hostparent"

    assert_text "Hostparent was successfully updated"
    click_on "Back"
  end

  test "destroying a Hostparent" do
    visit hostparents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hostparent was successfully destroyed"
  end
end
