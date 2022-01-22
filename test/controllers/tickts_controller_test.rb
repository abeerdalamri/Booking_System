require "test_helper"

class TicktsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tickt = tickts(:one)
  end

  test "should get index" do
    get tickts_url
    assert_response :success
  end

  test "should get new" do
    get new_tickt_url
    assert_response :success
  end

  test "should create tickt" do
    assert_difference("Tickt.count") do
      post tickts_url, params: { tickt: { name: @tickt.name, price: @tickt.price, reference: @tickt.reference } }
    end

    assert_redirected_to tickt_url(Tickt.last)
  end

  test "should show tickt" do
    get tickt_url(@tickt)
    assert_response :success
  end

  test "should get edit" do
    get edit_tickt_url(@tickt)
    assert_response :success
  end

  test "should update tickt" do
    patch tickt_url(@tickt), params: { tickt: { name: @tickt.name, price: @tickt.price, reference: @tickt.reference } }
    assert_redirected_to tickt_url(@tickt)
  end

  test "should destroy tickt" do
    assert_difference("Tickt.count", -1) do
      delete tickt_url(@tickt)
    end

    assert_redirected_to tickts_url
  end
end
