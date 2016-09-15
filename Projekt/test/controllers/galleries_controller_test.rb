require 'test_helper'

class GalleriesControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  include Warden::Test::Helpers

  setup do
    @gallery = galleries(:one)
    sign_in users(:user)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galleries)
  end

  test "should get new" do
    get :new, gallery: @gallery.id
    assert_response :success
  end

  test "should create gallery" do
    assert_difference('Gallery.count') do
      post :create, gallery: { description: @gallery.description, image: @gallery.image, title: @gallery.title }
    end

    assert_redirected_to gallery_path(assigns(:gallery))
  end

  test "should show gallery" do
    get :show, id: @gallery.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallery.id
    assert_response :success
  end

  test "should update gallery" do
    patch :update, id: @gallery.id, gallery: { description: @gallery.description, image: @gallery.image, title: @gallery.title }
    assert_redirected_to gallery_path(assigns(:gallery))
  end

  test "should destroy gallery" do
    assert_difference('Gallery.count', -1) do
      delete :destroy, id: @gallery.id
    end

    assert_redirected_to galleries_path
  end
 end
