require 'test_helper'

class YogaWorkshopsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yoga_workshops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yoga_workshop" do
    assert_difference('YogaWorkshop.count') do
      post :create, :yoga_workshop => { }
    end

    assert_redirected_to yoga_workshop_path(assigns(:yoga_workshop))
  end

  test "should show yoga_workshop" do
    get :show, :id => yoga_workshops(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => yoga_workshops(:one).to_param
    assert_response :success
  end

  test "should update yoga_workshop" do
    put :update, :id => yoga_workshops(:one).to_param, :yoga_workshop => { }
    assert_redirected_to yoga_workshop_path(assigns(:yoga_workshop))
  end

  test "should destroy yoga_workshop" do
    assert_difference('YogaWorkshop.count', -1) do
      delete :destroy, :id => yoga_workshops(:one).to_param
    end

    assert_redirected_to yoga_workshops_path
  end
end
