require 'test_helper'

class PowderTypesControllerTest < ActionController::TestCase
  setup do
    @powder_type = powder_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:powder_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create powder_type" do
    assert_difference('PowderType.count') do
      post :create, powder_type: { name: @powder_type.name }
    end

    assert_redirected_to powder_type_path(assigns(:powder_type))
  end

  test "should show powder_type" do
    get :show, id: @powder_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @powder_type
    assert_response :success
  end

  test "should update powder_type" do
    patch :update, id: @powder_type, powder_type: { name: @powder_type.name }
    assert_redirected_to powder_type_path(assigns(:powder_type))
  end

  test "should destroy powder_type" do
    assert_difference('PowderType.count', -1) do
      delete :destroy, id: @powder_type
    end

    assert_redirected_to powder_types_path
  end
end
