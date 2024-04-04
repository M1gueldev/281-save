require "application_system_test_case"

class InventariosTest < ApplicationSystemTestCase
  setup do
    @inventario = inventarios(:one)
  end

  test "visiting the index" do
    visit inventarios_url
    assert_selector "h1", text: "Inventarios"
  end

  test "should create inventario" do
    visit inventarios_url
    click_on "New inventario"

    fill_in "Cantidad", with: @inventario.cantidad
    fill_in "Elementos", with: @inventario.elementos
    fill_in "Fecha", with: @inventario.fecha
    fill_in "Ubicacion", with: @inventario.ubicacion
    click_on "Create Inventario"

    assert_text "Inventario was successfully created"
    click_on "Back"
  end

  test "should update Inventario" do
    visit inventario_url(@inventario)
    click_on "Edit this inventario", match: :first

    fill_in "Cantidad", with: @inventario.cantidad
    fill_in "Elementos", with: @inventario.elementos
    fill_in "Fecha", with: @inventario.fecha
    fill_in "Ubicacion", with: @inventario.ubicacion
    click_on "Update Inventario"

    assert_text "Inventario was successfully updated"
    click_on "Back"
  end

  test "should destroy Inventario" do
    visit inventario_url(@inventario)
    click_on "Destroy this inventario", match: :first

    assert_text "Inventario was successfully destroyed"
  end
end
