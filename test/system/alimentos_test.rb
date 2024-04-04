require "application_system_test_case"

class AlimentosTest < ApplicationSystemTestCase
  setup do
    @alimento = alimentos(:one)
  end

  test "visiting the index" do
    visit alimentos_url
    assert_selector "h1", text: "Alimentos"
  end

  test "should create alimento" do
    visit alimentos_url
    click_on "New alimento"

    fill_in "Description", with: @alimento.description
    fill_in "Name", with: @alimento.name
    fill_in "Quantity", with: @alimento.quantity
    click_on "Create Alimento"

    assert_text "Alimento was successfully created"
    click_on "Back"
  end

  test "should update Alimento" do
    visit alimento_url(@alimento)
    click_on "Edit this alimento", match: :first

    fill_in "Description", with: @alimento.description
    fill_in "Name", with: @alimento.name
    fill_in "Quantity", with: @alimento.quantity
    click_on "Update Alimento"

    assert_text "Alimento was successfully updated"
    click_on "Back"
  end

  test "should destroy Alimento" do
    visit alimento_url(@alimento)
    click_on "Destroy this alimento", match: :first

    assert_text "Alimento was successfully destroyed"
  end
end
