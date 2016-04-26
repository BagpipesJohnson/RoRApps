require 'test_helper'

class SurveyQuestionResponsesControllerTest < ActionController::TestCase
  setup do
    @survey_question_response = survey_question_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_question_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_question_response" do
    assert_difference('SurveyQuestionResponse.count') do
      post :create, survey_question_response: { observation_id: @survey_question_response.observation_id, response: @survey_question_response.response, survey_question_id: @survey_question_response.survey_question_id }
    end

    assert_redirected_to survey_question_response_path(assigns(:survey_question_response))
  end

  test "should show survey_question_response" do
    get :show, id: @survey_question_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_question_response
    assert_response :success
  end

  test "should update survey_question_response" do
    patch :update, id: @survey_question_response, survey_question_response: { observation_id: @survey_question_response.observation_id, response: @survey_question_response.response, survey_question_id: @survey_question_response.survey_question_id }
    assert_redirected_to survey_question_response_path(assigns(:survey_question_response))
  end

  test "should destroy survey_question_response" do
    assert_difference('SurveyQuestionResponse.count', -1) do
      delete :destroy, id: @survey_question_response
    end

    assert_redirected_to survey_question_responses_path
  end
end
