require "application_system_test_case"

class SolicitudsTest < ApplicationSystemTestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "visiting the index" do
    visit solicituds_url
    assert_selector "h1", text: "Solicituds"
  end

  test "should create solicitud" do
    visit solicituds_url
    click_on "New solicitud"

    fill_in "Inventario", with: @solicitud.inventario_id
    fill_in "Organizacion benefica", with: @solicitud.organizacion_benefica_id
    fill_in "User", with: @solicitud.user_id
    fill_in "Voluntario", with: @solicitud.voluntario_id
    click_on "Create Solicitud"

    assert_text "Solicitud was successfully created"
    click_on "Back"
  end

  test "should update Solicitud" do
    visit solicitud_url(@solicitud)
    click_on "Edit this solicitud", match: :first

    fill_in "Inventario", with: @solicitud.inventario_id
    fill_in "Organizacion benefica", with: @solicitud.organizacion_benefica_id
    fill_in "User", with: @solicitud.user_id
    fill_in "Voluntario", with: @solicitud.voluntario_id
    click_on "Update Solicitud"

    assert_text "Solicitud was successfully updated"
    click_on "Back"
  end

  test "should destroy Solicitud" do
    visit solicitud_url(@solicitud)
    click_on "Destroy this solicitud", match: :first

    assert_text "Solicitud was successfully destroyed"
  end
end
