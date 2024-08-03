require "test_helper"

class PurchaseHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_history = purchase_histories(:one)
  end

  test "should get index" do
    get purchase_histories_url, as: :json
    assert_response :success
  end

  test "should create purchase_history" do
    assert_difference("PurchaseHistory.count") do
      post purchase_histories_url, params: { purchase_history: { deleted_at: @purchase_history.deleted_at, item_id_id: @purchase_history.item_id_id, user_id_id: @purchase_history.user_id_id } }, as: :json
    end

    assert_response :created
  end

  test "should show purchase_history" do
    get purchase_history_url(@purchase_history), as: :json
    assert_response :success
  end

  test "should update purchase_history" do
    patch purchase_history_url(@purchase_history), params: { purchase_history: { deleted_at: @purchase_history.deleted_at, item_id_id: @purchase_history.item_id_id, user_id_id: @purchase_history.user_id_id } }, as: :json
    assert_response :success
  end

  test "should destroy purchase_history" do
    assert_difference("PurchaseHistory.count", -1) do
      delete purchase_history_url(@purchase_history), as: :json
    end

    assert_response :no_content
  end
end
