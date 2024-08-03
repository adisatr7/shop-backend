require "test_helper"

class ItemPicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_picture = item_pictures(:one)
  end

  test "should get index" do
    get item_pictures_url, as: :json
    assert_response :success
  end

  test "should create item_picture" do
    assert_difference("ItemPicture.count") do
      post item_pictures_url, params: { item_picture: { deleted_at: @item_picture.deleted_at, item_id_id: @item_picture.item_id_id, name: @item_picture.name, url: @item_picture.url } }, as: :json
    end

    assert_response :created
  end

  test "should show item_picture" do
    get item_picture_url(@item_picture), as: :json
    assert_response :success
  end

  test "should update item_picture" do
    patch item_picture_url(@item_picture), params: { item_picture: { deleted_at: @item_picture.deleted_at, item_id_id: @item_picture.item_id_id, name: @item_picture.name, url: @item_picture.url } }, as: :json
    assert_response :success
  end

  test "should destroy item_picture" do
    assert_difference("ItemPicture.count", -1) do
      delete item_picture_url(@item_picture), as: :json
    end

    assert_response :no_content
  end
end
