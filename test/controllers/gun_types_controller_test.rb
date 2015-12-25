require 'test_helper'

class GunTypesControllerTest < ActionController::TestCase
  setup do
    @gun_type = gun_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gun_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gun_type" do
    assert_difference('GunType.count') do
      post :create, gun_type: { name: @gun_type.name }
    end

    assert_redirected_to gun_type_path(assigns(:gun_type))
  end

  test "should show gun_type" do
    get :show, id: @gun_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gun_type
    assert_response :success
  end

  test "should update gun_type" do
    patch :update, id: @gun_type, gun_type: { name: @gun_type.name }
    assert_redirected_to gun_type_path(assigns(:gun_type))
  end

  test "should destroy gun_type" do
    assert_difference('GunType.count', -1) do
      delete :destroy, id: @gun_type
    end

    assert_redirected_to gun_types_path
  end
end
