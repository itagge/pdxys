require 'test_helper'

class YogaClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yoga_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yoga_class" do
    assert_difference('YogaClass.count') do
      post :create, :yoga_class => { }
    end

    assert_redirected_to yoga_class_path(assigns(:yoga_class))
  end

  test "should show yoga_class" do
    get :show, :id => yoga_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => yoga_classes(:one).to_param
    assert_response :success
  end

  test "should update yoga_class" do
    put :update, :id => yoga_classes(:one).to_param, :yoga_class => { }
    assert_redirected_to yoga_class_path(assigns(:yoga_class))
  end

  test "should destroy yoga_class" do
    assert_difference('YogaClass.count', -1) do
      delete :destroy, :id => yoga_classes(:one).to_param
    end

    assert_redirected_to yoga_classes_path
  end
end
