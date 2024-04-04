require "application_system_test_case"

class EstablecimientosTest < ApplicationSystemTestCase
  setup do
    @establecimiento = establecimientos(:one)
  end

  test "visiting the index" do
    visit establecimientos_url
    assert_selector "h1", text: "Establecimientos"
  end

  test "should create establecimiento" do
    visit establecimientos_url
    click_on "New establecimiento"

    fill_in "Description", with: @establecimiento.description
    fill_in "Location", with: @establecimiento.location
    fill_in "Name", with: @establecimiento.name
    click_on "Create Establecimiento"

    assert_text "Establecimiento was successfully created"
    click_on "Back"
  end

  test "should update Establecimiento" do
    visit establecimiento_url(@establecimiento)
    click_on "Edit this establecimiento", match: :first

    fill_in "Description", with: @establecimiento.description
    fill_in "Location", with: @establecimiento.location
    fill_in "Name", with: @establecimiento.name
    click_on "Update Establecimiento"

    assert_text "Establecimiento was successfully updated"
    click_on "Back"
  end

  test "should destroy Establecimiento" do
    visit establecimiento_url(@establecimiento)
    click_on "Destroy this establecimiento", match: :first

    assert_text "Establecimiento was successfully destroyed"
  end
end
