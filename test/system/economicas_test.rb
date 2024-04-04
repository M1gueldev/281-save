require "application_system_test_case"

class EconomicasTest < ApplicationSystemTestCase
  setup do
    @economica = economicas(:one)
  end

  test "visiting the index" do
    visit economicas_url
    assert_selector "h1", text: "Economicas"
  end

  test "should create economica" do
    visit economicas_url
    click_on "New economica"

    fill_in "Amount", with: @economica.amount
    fill_in "Description", with: @economica.description
    click_on "Create Economica"

    assert_text "Economica was successfully created"
    click_on "Back"
  end

  test "should update Economica" do
    visit economica_url(@economica)
    click_on "Edit this economica", match: :first

    fill_in "Amount", with: @economica.amount
    fill_in "Description", with: @economica.description
    click_on "Update Economica"

    assert_text "Economica was successfully updated"
    click_on "Back"
  end

  test "should destroy Economica" do
    visit economica_url(@economica)
    click_on "Destroy this economica", match: :first

    assert_text "Economica was successfully destroyed"
  end
end
