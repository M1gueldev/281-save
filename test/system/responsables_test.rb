require "application_system_test_case"

class ResponsablesTest < ApplicationSystemTestCase
  setup do
    @responsable = responsables(:one)
  end

  test "visiting the index" do
    visit responsables_url
    assert_selector "h1", text: "Responsables"
  end

  test "should create responsable" do
    visit responsables_url
    click_on "New responsable"

    fill_in "Address", with: @responsable.address
    fill_in "Email", with: @responsable.email
    fill_in "Identification", with: @responsable.identification
    fill_in "Name", with: @responsable.name
    fill_in "Phone", with: @responsable.phone
    click_on "Create Responsable"

    assert_text "Responsable was successfully created"
    click_on "Back"
  end

  test "should update Responsable" do
    visit responsable_url(@responsable)
    click_on "Edit this responsable", match: :first

    fill_in "Address", with: @responsable.address
    fill_in "Email", with: @responsable.email
    fill_in "Identification", with: @responsable.identification
    fill_in "Name", with: @responsable.name
    fill_in "Phone", with: @responsable.phone
    click_on "Update Responsable"

    assert_text "Responsable was successfully updated"
    click_on "Back"
  end

  test "should destroy Responsable" do
    visit responsable_url(@responsable)
    click_on "Destroy this responsable", match: :first

    assert_text "Responsable was successfully destroyed"
  end
end
