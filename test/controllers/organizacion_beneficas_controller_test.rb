require "test_helper"

class OrganizacionBeneficasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organizacion_benefica = organizacion_beneficas(:one)
  end

  test "should get index" do
    get organizacion_beneficas_url
    assert_response :success
  end

  test "should get new" do
    get new_organizacion_benefica_url
    assert_response :success
  end

  test "should create organizacion_benefica" do
    assert_difference("OrganizacionBenefica.count") do
      post organizacion_beneficas_url, params: { organizacion_benefica: { CI: @organizacion_benefica.CI, economica_id: @organizacion_benefica.economica_id, email: @organizacion_benefica.email, latitud: @organizacion_benefica.latitud, longitud: @organizacion_benefica.longitud, nombre: @organizacion_benefica.nombre, nro_de_cuenta: @organizacion_benefica.nro_de_cuenta, tipo: @organizacion_benefica.tipo } }
    end

    assert_redirected_to organizacion_benefica_url(OrganizacionBenefica.last)
  end

  test "should show organizacion_benefica" do
    get organizacion_benefica_url(@organizacion_benefica)
    assert_response :success
  end

  test "should get edit" do
    get edit_organizacion_benefica_url(@organizacion_benefica)
    assert_response :success
  end

  test "should update organizacion_benefica" do
    patch organizacion_benefica_url(@organizacion_benefica), params: { organizacion_benefica: { CI: @organizacion_benefica.CI, economica_id: @organizacion_benefica.economica_id, email: @organizacion_benefica.email, latitud: @organizacion_benefica.latitud, longitud: @organizacion_benefica.longitud, nombre: @organizacion_benefica.nombre, nro_de_cuenta: @organizacion_benefica.nro_de_cuenta, tipo: @organizacion_benefica.tipo } }
    assert_redirected_to organizacion_benefica_url(@organizacion_benefica)
  end

  test "should destroy organizacion_benefica" do
    assert_difference("OrganizacionBenefica.count", -1) do
      delete organizacion_benefica_url(@organizacion_benefica)
    end

    assert_redirected_to organizacion_beneficas_url
  end
end
