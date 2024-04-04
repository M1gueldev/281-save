require "application_system_test_case"

class CuentaBancariaTest < ApplicationSystemTestCase
  setup do
    @cuenta_bancarium = cuenta_bancaria(:one)
  end

  test "visiting the index" do
    visit cuenta_bancaria_url
    assert_selector "h1", text: "Cuenta bancaria"
  end

  test "should create cuenta bancarium" do
    visit cuenta_bancaria_url
    click_on "New cuenta bancarium"

    fill_in "Bank", with: @cuenta_bancarium.bank
    fill_in "Number", with: @cuenta_bancarium.number
    fill_in "User", with: @cuenta_bancarium.user
    click_on "Create Cuenta bancarium"

    assert_text "Cuenta bancarium was successfully created"
    click_on "Back"
  end

  test "should update Cuenta bancarium" do
    visit cuenta_bancarium_url(@cuenta_bancarium)
    click_on "Edit this cuenta bancarium", match: :first

    fill_in "Bank", with: @cuenta_bancarium.bank
    fill_in "Number", with: @cuenta_bancarium.number
    fill_in "User", with: @cuenta_bancarium.user
    click_on "Update Cuenta bancarium"

    assert_text "Cuenta bancarium was successfully updated"
    click_on "Back"
  end

  test "should destroy Cuenta bancarium" do
    visit cuenta_bancarium_url(@cuenta_bancarium)
    click_on "Destroy this cuenta bancarium", match: :first

    assert_text "Cuenta bancarium was successfully destroyed"
  end
end
