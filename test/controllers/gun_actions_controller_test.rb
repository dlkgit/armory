require 'test_helper'

class GunActionsControllerTest < ActionController::TestCase
  setup do
    @gun_action = gun_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gun_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gun_action" do
    assert_difference('GunAction.count') do
      post :create, gun_action: { action_type: @gun_action.action_type }
    end

    assert_redirected_to gun_action_path(assigns(:gun_action))
  end

  test "should show gun_action" do
    get :show, id: @gun_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gun_action
    assert_response :success
  end

  test "should update gun_action" do
    patch :update, id: @gun_action, gun_action: { action_type: @gun_action.action_type }
    assert_redirected_to gun_action_path(assigns(:gun_action))
  end

  test "should destroy gun_action" do
    assert_difference('GunAction.count', -1) do
      delete :destroy, id: @gun_action
    end

    assert_redirected_to gun_actions_path
  end
end
