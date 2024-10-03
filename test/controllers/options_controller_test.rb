require "test_helper"

class OptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option = options(:one)
  end

  test "should get index" do
    get options_url
    assert_response :success
  end

  test "should get new" do
    get new_option_url
    assert_response :success
  end

  test "should create option" do
    assert_difference("Option.count") do
      post options_url, params: { option: { expiry_date: @option.expiry_date, option_type: @option.option_type, risk_free_rate: @option.risk_free_rate, stock_price: @option.stock_price, strike_price: @option.strike_price, volatility: @option.volatility } }
    end

    assert_redirected_to option_url(Option.last)
  end

  test "should show option" do
    get option_url(@option)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_url(@option)
    assert_response :success
  end

  test "should update option" do
    patch option_url(@option), params: { option: { expiry_date: @option.expiry_date, option_type: @option.option_type, risk_free_rate: @option.risk_free_rate, stock_price: @option.stock_price, strike_price: @option.strike_price, volatility: @option.volatility } }
    assert_redirected_to option_url(@option)
  end

  test "should destroy option" do
    assert_difference("Option.count", -1) do
      delete option_url(@option)
    end

    assert_redirected_to options_url
  end
end
