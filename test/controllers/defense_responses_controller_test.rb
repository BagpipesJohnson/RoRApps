require 'test_helper'

class DefenseResponsesControllerTest < ActionController::TestCase
  setup do
    @defense_response = defense_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defense_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defense_response" do
    assert_difference('DefenseResponse.count') do
      post :create, defense_response: { defense_id: @defense_response.defense_id, observation_id: @defense_response.observation_id, response: @defense_response.response }
    end

    assert_redirected_to defense_response_path(assigns(:defense_response))
  end

  test "should show defense_response" do
    get :show, id: @defense_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defense_response
    assert_response :success
  end

  test "should update defense_response" do
    patch :update, id: @defense_response, defense_response: { defense_id: @defense_response.defense_id, observation_id: @defense_response.observation_id, response: @defense_response.response }
    assert_redirected_to defense_response_path(assigns(:defense_response))
  end

  test "should destroy defense_response" do
    assert_difference('DefenseResponse.count', -1) do
      delete :destroy, id: @defense_response
    end

    assert_redirected_to defense_responses_path
  end
end
