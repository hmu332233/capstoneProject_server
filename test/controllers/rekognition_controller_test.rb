require 'test_helper'

class RekognitionControllerTest < ActionController::TestCase
  test "should get createCollection" do
    get :createCollection
    assert_response :success
  end

  test "should get deleteCollection" do
    get :deleteCollection
    assert_response :success
  end

  test "should get addFace" do
    get :addFace
    assert_response :success
  end

  test "should get deleteFace" do
    get :deleteFace
    assert_response :success
  end

  test "should get searchFace" do
    get :searchFace
    assert_response :success
  end

end
