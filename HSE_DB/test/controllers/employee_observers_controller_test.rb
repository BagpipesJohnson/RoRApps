require 'test_helper'

class EmployeeObserversControllerTest < ActionController::TestCase
  setup do
    @employee_observer = employee_observers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_observers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_observer" do
    assert_difference('EmployeeObserver.count') do
      post :create, employee_observer: { first_name: @employee_observer.first_name, last_name: @employee_observer.last_name, region_id: @employee_observer.region_id }
    end

    assert_redirected_to employee_observer_path(assigns(:employee_observer))
  end

  test "should show employee_observer" do
    get :show, id: @employee_observer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_observer
    assert_response :success
  end

  test "should update employee_observer" do
    patch :update, id: @employee_observer, employee_observer: { first_name: @employee_observer.first_name, last_name: @employee_observer.last_name, region_id: @employee_observer.region_id }
    assert_redirected_to employee_observer_path(assigns(:employee_observer))
  end

  test "should destroy employee_observer" do
    assert_difference('EmployeeObserver.count', -1) do
      delete :destroy, id: @employee_observer
    end

    assert_redirected_to employee_observers_path
  end
end
