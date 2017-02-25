require 'test_helper'

class MessageHashtagsControllerTest < ActionController::TestCase
  setup do
    @message_hashtag = message_hashtags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:message_hashtags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message_hashtag" do
    assert_difference('MessageHashtag.count') do
      post :create, message_hashtag: { hash_id: @message_hashtag.hash_id, message_id: @message_hashtag.message_id }
    end

    assert_redirected_to message_hashtag_path(assigns(:message_hashtag))
  end

  test "should show message_hashtag" do
    get :show, id: @message_hashtag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message_hashtag
    assert_response :success
  end

  test "should update message_hashtag" do
    patch :update, id: @message_hashtag, message_hashtag: { hash_id: @message_hashtag.hash_id, message_id: @message_hashtag.message_id }
    assert_redirected_to message_hashtag_path(assigns(:message_hashtag))
  end

  test "should destroy message_hashtag" do
    assert_difference('MessageHashtag.count', -1) do
      delete :destroy, id: @message_hashtag
    end

    assert_redirected_to message_hashtags_path
  end
end
