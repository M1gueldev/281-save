require "application_system_test_case"

class OrganizacionBeneficasTest < ApplicationSystemTestCase
  setup do
    @organizacion_benefica = organizacion_beneficas(:one)
  end

  test "visiting the index" do
    visit organizacion_beneficas_url
    assert_selector "h1", text: "Organizacion beneficas"
  end

  test "should create organizacion benefica" do
    visit organizacion_beneficas_url
    click_on "New organizacion benefica"

    fill_in "Ci", with: @organizacion_benefica.CI
    fill_in "Economica", with: @organizacion_benefica.economica_id
    fill_in "Email", with: @organizacion_benefica.email
    fill_in "Latitud", with: @organizacion_benefica.latitud
    fill_in "Longitud", with: @organizacion_benefica.longitud
    fill_in "Nombre", with: @organizacion_benefica.nombre
    fill_in "Nro de cuenta", with: @organizacion_benefica.nro_de_cuenta
    fill_in "Tipo", with: @organizacion_benefica.tipo
    click_on "Create Organizacion benefica"

    assert_text "Organizacion benefica was successfully created"
    click_on "Back"
  end

  test "should update Organizacion benefica" do
    visit organizacion_benefica_url(@organizacion_benefica)
    click_on "Edit this organizacion benefica", match: :first

    fill_in "Ci", with: @organizacion_benefica.CI
    fill_in "Economica", with: @organizacion_benefica.economica_id
    fill_in "Email", with: @organizacion_benefica.email
    fill_in "Latitud", with: @organizacion_benefica.latitud
    fill_in "Longitud", with: @organizacion_benefica.longitud
    fill_in "Nombre", with: @organizacion_benefica.nombre
    fill_in "Nro de cuenta", with: @organizacion_benefica.nro_de_cuenta
    fill_in "Tipo", with: @organizacion_benefica.tipo
    click_on "Update Organizacion benefica"

    assert_text "Organizacion benefica was successfully updated"
    click_on "Back"
  end

  test "should destroy Organizacion benefica" do
    visit organizacion_benefica_url(@organizacion_benefica)
    click_on "Destroy this organizacion benefica", match: :first

    assert_text "Organizacion benefica was successfully destroyed"
  end
end
