require "test_helper"

class SolicitudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get solicituds_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_url
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference("Solicitud.count") do
      post solicituds_url, params: { solicitud: { inventario_id: @solicitud.inventario_id, organizacion_benefica_id: @solicitud.organizacion_benefica_id, user_id: @solicitud.user_id, voluntario_id: @solicitud.voluntario_id } }
    end

    assert_redirected_to solicitud_url(Solicitud.last)
  end

  test "should show solicitud" do
    get solicitud_url(@solicitud)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_url(@solicitud)
    assert_response :success
  end

  test "should update solicitud" do
    patch solicitud_url(@solicitud), params: { solicitud: { inventario_id: @solicitud.inventario_id, organizacion_benefica_id: @solicitud.organizacion_benefica_id, user_id: @solicitud.user_id, voluntario_id: @solicitud.voluntario_id } }
    assert_redirected_to solicitud_url(@solicitud)
  end

  test "should destroy solicitud" do
    assert_difference("Solicitud.count", -1) do
      delete solicitud_url(@solicitud)
    end

    assert_redirected_to solicituds_url
  end
end
