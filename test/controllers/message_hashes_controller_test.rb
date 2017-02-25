require 'test_helper'

class MessageHashesControllerTest < ActionController::TestCase
  setup do
    @message_hash = message_hashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:message_hashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message_hash" do
    assert_difference('MessageHash.count') do
      post :create, message_hash: { hash_id: @message_hash.hash_id, message_id: @message_hash.message_id }
    end

    assert_redirected_to message_hash_path(assigns(:message_hash))
  end

  test "should show message_hash" do
    get :show, id: @message_hash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message_hash
    assert_response :success
  end

  test "should update message_hash" do
    patch :update, id: @message_hash, message_hash: { hash_id: @message_hash.hash_id, message_id: @message_hash.message_id }
    assert_redirected_to message_hash_path(assigns(:message_hash))
  end

  test "should destroy message_hash" do
    assert_difference('MessageHash.count', -1) do
      delete :destroy, id: @message_hash
    end

    assert_redirected_to message_hashes_path
  end
end
