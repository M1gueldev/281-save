require "test_helper"

class DonacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donacion = donacions(:one)
  end

  test "should get index" do
    get donacions_url
    assert_response :success
  end

  test "should get new" do
    get new_donacion_url
    assert_response :success
  end

  test "should create donacion" do
    assert_difference("Donacion.count") do
      post donacions_url, params: { donacion: { alimento_id: @donacion.alimento_id, producto_id: @donacion.producto_id, solicitud_id: @donacion.solicitud_id } }
    end

    assert_redirected_to donacion_url(Donacion.last)
  end

  test "should show donacion" do
    get donacion_url(@donacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_donacion_url(@donacion)
    assert_response :success
  end

  test "should update donacion" do
    patch donacion_url(@donacion), params: { donacion: { alimento_id: @donacion.alimento_id, producto_id: @donacion.producto_id, solicitud_id: @donacion.solicitud_id } }
    assert_redirected_to donacion_url(@donacion)
  end

  test "should destroy donacion" do
    assert_difference("Donacion.count", -1) do
      delete donacion_url(@donacion)
    end

    assert_redirected_to donacions_url
  end
end
