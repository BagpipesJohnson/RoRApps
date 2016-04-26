require 'test_helper'

class ObservationsControllerTest < ActionController::TestCase
  setup do
    @observation = observations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observation" do
    assert_difference('Observation.count') do
      post :create, observation: { business_unit_id: @observation.business_unit_id, customer_id: @observation.customer_id, description: @observation.description, employee_observer_id: @observation.employee_observer_id, feedback_comments: @observation.feedback_comments, observation_date: @observation.observation_date, observation_type_id: @observation.observation_type_id, region_id: @observation.region_id, service_center_id: @observation.service_center_id }
    end

    assert_redirected_to observation_path(assigns(:observation))
  end

  test "should show observation" do
    get :show, id: @observation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @observation
    assert_response :success
  end

  test "should update observation" do
    patch :update, id: @observation, observation: { business_unit_id: @observation.business_unit_id, customer_id: @observation.customer_id, description: @observation.description, employee_observer_id: @observation.employee_observer_id, feedback_comments: @observation.feedback_comments, observation_date: @observation.observation_date, observation_type_id: @observation.observation_type_id, region_id: @observation.region_id, service_center_id: @observation.service_center_id }
    assert_redirected_to observation_path(assigns(:observation))
  end

  test "should destroy observation" do
    assert_difference('Observation.count', -1) do
      delete :destroy, id: @observation
    end

    assert_redirected_to observations_path
  end
end
