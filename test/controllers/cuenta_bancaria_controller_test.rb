require "test_helper"

class CuentaBancariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuenta_bancarium = cuenta_bancaria(:one)
  end

  test "should get index" do
    get cuenta_bancaria_url
    assert_response :success
  end

  test "should get new" do
    get new_cuenta_bancarium_url
    assert_response :success
  end

  test "should create cuenta_bancarium" do
    assert_difference("CuentaBancarium.count") do
      post cuenta_bancaria_url, params: { cuenta_bancarium: { bank: @cuenta_bancarium.bank, number: @cuenta_bancarium.number, user: @cuenta_bancarium.user } }
    end

    assert_redirected_to cuenta_bancarium_url(CuentaBancarium.last)
  end

  test "should show cuenta_bancarium" do
    get cuenta_bancarium_url(@cuenta_bancarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuenta_bancarium_url(@cuenta_bancarium)
    assert_response :success
  end

  test "should update cuenta_bancarium" do
    patch cuenta_bancarium_url(@cuenta_bancarium), params: { cuenta_bancarium: { bank: @cuenta_bancarium.bank, number: @cuenta_bancarium.number, user: @cuenta_bancarium.user } }
    assert_redirected_to cuenta_bancarium_url(@cuenta_bancarium)
  end

  test "should destroy cuenta_bancarium" do
    assert_difference("CuentaBancarium.count", -1) do
      delete cuenta_bancarium_url(@cuenta_bancarium)
    end

    assert_redirected_to cuenta_bancaria_url
  end
end
