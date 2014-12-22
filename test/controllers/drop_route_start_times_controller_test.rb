require 'test_helper'

class DropRouteStartTimesControllerTest < ActionController::TestCase
  setup do
    @drop_route_start_time = drop_route_start_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drop_route_start_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drop_route_start_time" do
    assert_difference('DropRouteStartTime.count') do
      post :create, drop_route_start_time: {  }
    end

    assert_redirected_to drop_route_start_time_path(assigns(:drop_route_start_time))
  end

  test "should show drop_route_start_time" do
    get :show, id: @drop_route_start_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drop_route_start_time
    assert_response :success
  end

  test "should update drop_route_start_time" do
    patch :update, id: @drop_route_start_time, drop_route_start_time: {  }
    assert_redirected_to drop_route_start_time_path(assigns(:drop_route_start_time))
  end

  test "should destroy drop_route_start_time" do
    assert_difference('DropRouteStartTime.count', -1) do
      delete :destroy, id: @drop_route_start_time
    end

    assert_redirected_to drop_route_start_times_path
  end
end
