require 'test_helper'

class ObservationTypesControllerTest < ActionController::TestCase
  setup do
    @observation_type = observation_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observation_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observation_type" do
    assert_difference('ObservationType.count') do
      post :create, observation_type: { description: @observation_type.description }
    end

    assert_redirected_to observation_type_path(assigns(:observation_type))
  end

  test "should show observation_type" do
    get :show, id: @observation_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @observation_type
    assert_response :success
  end

  test "should update observation_type" do
    patch :update, id: @observation_type, observation_type: { description: @observation_type.description }
    assert_redirected_to observation_type_path(assigns(:observation_type))
  end

  test "should destroy observation_type" do
    assert_difference('ObservationType.count', -1) do
      delete :destroy, id: @observation_type
    end

    assert_redirected_to observation_types_path
  end
end
