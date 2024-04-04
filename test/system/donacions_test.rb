require "application_system_test_case"

class DonacionsTest < ApplicationSystemTestCase
  setup do
    @donacion = donacions(:one)
  end

  test "visiting the index" do
    visit donacions_url
    assert_selector "h1", text: "Donacions"
  end

  test "should create donacion" do
    visit donacions_url
    click_on "New donacion"

    fill_in "Alimento", with: @donacion.alimento_id
    fill_in "Producto", with: @donacion.producto_id
    fill_in "Solicitud", with: @donacion.solicitud_id
    click_on "Create Donacion"

    assert_text "Donacion was successfully created"
    click_on "Back"
  end

  test "should update Donacion" do
    visit donacion_url(@donacion)
    click_on "Edit this donacion", match: :first

    fill_in "Alimento", with: @donacion.alimento_id
    fill_in "Producto", with: @donacion.producto_id
    fill_in "Solicitud", with: @donacion.solicitud_id
    click_on "Update Donacion"

    assert_text "Donacion was successfully updated"
    click_on "Back"
  end

  test "should destroy Donacion" do
    visit donacion_url(@donacion)
    click_on "Destroy this donacion", match: :first

    assert_text "Donacion was successfully destroyed"
  end
end
