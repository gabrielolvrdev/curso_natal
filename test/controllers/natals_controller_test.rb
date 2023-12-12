require "test_helper"

class NatalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @natal = natals(:one)
  end

  test "should get index" do
    get natals_url, as: :json
    assert_response :success
  end

  test "should create natal" do
    assert_difference("Natal.count") do
      post natals_url, params: { natal: { name: @natal.name } }, as: :json
    end

    assert_response :created
  end

  test "should show natal" do
    get natal_url(@natal), as: :json
    assert_response :success
  end

  test "should update natal" do
    patch natal_url(@natal), params: { natal: { name: @natal.name } }, as: :json
    assert_response :success
  end

  test "should destroy natal" do
    assert_difference("Natal.count", -1) do
      delete natal_url(@natal), as: :json
    end

    assert_response :no_content
  end
end
