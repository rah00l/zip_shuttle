require 'test_helper'

class PickupRouteStartTimesControllerTest < ActionController::TestCase
  setup do
    @pickup_route_start_time = pickup_route_start_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickup_route_start_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup_route_start_time" do
    assert_difference('PickupRouteStartTime.count') do
      post :create, pickup_route_start_time: {  }
    end

    assert_redirected_to pickup_route_start_time_path(assigns(:pickup_route_start_time))
  end

  test "should show pickup_route_start_time" do
    get :show, id: @pickup_route_start_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup_route_start_time
    assert_response :success
  end

  test "should update pickup_route_start_time" do
    patch :update, id: @pickup_route_start_time, pickup_route_start_time: {  }
    assert_redirected_to pickup_route_start_time_path(assigns(:pickup_route_start_time))
  end

  test "should destroy pickup_route_start_time" do
    assert_difference('PickupRouteStartTime.count', -1) do
      delete :destroy, id: @pickup_route_start_time
    end

    assert_redirected_to pickup_route_start_times_path
  end
end
