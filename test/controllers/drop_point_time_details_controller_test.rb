require 'test_helper'

class DropPointTimeDetailsControllerTest < ActionController::TestCase
  setup do
    @drop_point_time_detail = drop_point_time_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drop_point_time_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drop_point_time_detail" do
    assert_difference('DropPointTimeDetail.count') do
      post :create, drop_point_time_detail: {  }
    end

    assert_redirected_to drop_point_time_detail_path(assigns(:drop_point_time_detail))
  end

  test "should show drop_point_time_detail" do
    get :show, id: @drop_point_time_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drop_point_time_detail
    assert_response :success
  end

  test "should update drop_point_time_detail" do
    patch :update, id: @drop_point_time_detail, drop_point_time_detail: {  }
    assert_redirected_to drop_point_time_detail_path(assigns(:drop_point_time_detail))
  end

  test "should destroy drop_point_time_detail" do
    assert_difference('DropPointTimeDetail.count', -1) do
      delete :destroy, id: @drop_point_time_detail
    end

    assert_redirected_to drop_point_time_details_path
  end
end
