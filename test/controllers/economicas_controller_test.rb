require "test_helper"

class EconomicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @economica = economicas(:one)
  end

  test "should get index" do
    get economicas_url
    assert_response :success
  end

  test "should get new" do
    get new_economica_url
    assert_response :success
  end

  test "should create economica" do
    assert_difference("Economica.count") do
      post economicas_url, params: { economica: { amount: @economica.amount, description: @economica.description } }
    end

    assert_redirected_to economica_url(Economica.last)
  end

  test "should show economica" do
    get economica_url(@economica)
    assert_response :success
  end

  test "should get edit" do
    get edit_economica_url(@economica)
    assert_response :success
  end

  test "should update economica" do
    patch economica_url(@economica), params: { economica: { amount: @economica.amount, description: @economica.description } }
    assert_redirected_to economica_url(@economica)
  end

  test "should destroy economica" do
    assert_difference("Economica.count", -1) do
      delete economica_url(@economica)
    end

    assert_redirected_to economicas_url
  end
end
