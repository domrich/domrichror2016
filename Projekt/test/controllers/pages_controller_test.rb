require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get galerie" do
    get :galerie
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

end
