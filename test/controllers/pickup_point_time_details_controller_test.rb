require 'test_helper'

class PickupPointTimeDetailsControllerTest < ActionController::TestCase
  setup do
    @pickup_point_time_detail = pickup_point_time_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickup_point_time_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup_point_time_detail" do
    assert_difference('PickupPointTimeDetail.count') do
      post :create, pickup_point_time_detail: {  }
    end

    assert_redirected_to pickup_point_time_detail_path(assigns(:pickup_point_time_detail))
  end

  test "should show pickup_point_time_detail" do
    get :show, id: @pickup_point_time_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup_point_time_detail
    assert_response :success
  end

  test "should update pickup_point_time_detail" do
    patch :update, id: @pickup_point_time_detail, pickup_point_time_detail: {  }
    assert_redirected_to pickup_point_time_detail_path(assigns(:pickup_point_time_detail))
  end

  test "should destroy pickup_point_time_detail" do
    assert_difference('PickupPointTimeDetail.count', -1) do
      delete :destroy, id: @pickup_point_time_detail
    end

    assert_redirected_to pickup_point_time_details_path
  end
end
